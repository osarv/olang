# olang values in lldb (and lldb-dap): run-time arrays and text, enums carrying payloads, Vec and Map shown as olang
# writes them. Load with
#
#   command script import /path/to/olang/editors/debug/olang_lldb.py
#
# (editors/nvim's debugger configuration does it). A debugger plug-in, so Python: lldb runs no other language.
#
# What a -debug build describes (compiler/emit.olang, "debug information"): a run-time array or a reference to one is
# a struct {len, data} with data a pointer to the elements; text is one whose elements are Char; an enum carrying a
# payload is a struct {case, payload} with payload a union of a member per case, named as the case; Vec<T> holds its
# buffer in data and its length in n; Map<K, V> its entries in ents, the first n slots used where next[i] >= -1.
#
# A program driving lldb (an olang debug adapter) imports this module and calls render(value) for olang's text of a
# value, or register(debugger) to install the formatters.

import lldb

MAX_ITEMS = 10000      # the elements a run-time array or a Vec shows at most
MAX_TEXT = 4096        # the bytes of text a summary shows at most
SUMMARY_ITEMS = 8      # the elements a summary lists before "..."


def _fields(t):
    t = t.GetCanonicalType()
    if t.GetTypeClass() not in (lldb.eTypeClassStruct, lldb.eTypeClassClass):
        return None
    return [t.GetFieldAtIndex(i) for i in range(t.GetNumberOfFields())]


def _strip(t):
    while t.IsTypedefType():
        t = t.GetTypedefedType()
    return t


def is_array(t, _dict=None):
    """A run-time array (or a reference to one): {len, data}, data a pointer."""
    fs = _fields(t)
    return (fs is not None and len(fs) == 2 and fs[0].GetName() == "len" and fs[1].GetName() == "data"
            and fs[1].GetType().GetCanonicalType().IsPointerType())


def is_text(t, _dict=None):
    """Text: a run-time array of Char."""
    if not is_array(t):
        return False
    el = _fields(t)[1].GetType().GetPointeeType()
    return el.GetName() == "Char" or el.GetName() == "const Char"


def is_enum(t, _dict=None):
    """An enum carrying a payload: {case, payload}, payload a union."""
    fs = _fields(t)
    return (fs is not None and len(fs) == 2 and fs[0].GetName() == "case" and fs[1].GetName() == "payload"
            and fs[1].GetType().GetCanonicalType().GetTypeClass() == lldb.eTypeClassUnion)


def is_vec(t, _dict=None):
    fs = _fields(t)
    return (fs is not None and t.GetCanonicalType().GetName().startswith("Vec<")
            and [f.GetName() for f in fs][:2] == ["data", "n"])


def is_map(t, _dict=None):
    fs = _fields(t)
    return (fs is not None and t.GetCanonicalType().GetName().startswith("Map<")
            and [f.GetName() for f in fs][:4] == ["ents", "next", "buckets", "n"])


# ---- reading values ----

def _elements(arr, count=None, start=0, name=lambda i: "[%d]" % i):
    """The elements of a {len, data} value, as values named [i]."""
    data = arr.GetChildMemberWithName("data")
    n = arr.GetChildMemberWithName("len").GetValueAsSigned()
    if count is None or count > n:
        count = n
    el = data.GetType().GetPointeeType()
    size = el.GetByteSize()
    base = data.GetValueAsUnsigned()
    count = max(0, min(count, MAX_ITEMS))
    return [arr.CreateValueFromAddress(name(i), base + i * size, el) for i in range(start, count)]


def text_of(arr):
    n = arr.GetChildMemberWithName("len").GetValueAsSigned()
    data = arr.GetChildMemberWithName("data").GetValueAsUnsigned()
    if n <= 0 or data == 0:
        return '""'
    err = lldb.SBError()
    raw = arr.GetProcess().ReadMemory(data, min(n, MAX_TEXT), err)
    if not err.Success():
        return "<unreadable text>"
    s = raw.decode("utf-8", "replace").replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")
    return '"' + s + ('..."' if n > MAX_TEXT else '"')


def enum_case(v):
    """The case's name and the value its payload is (None where the case carries none)."""
    case = v.GetChildMemberWithName("case")
    name = case.GetValue() or str(case.GetValueAsSigned())
    payload = v.GetChildMemberWithName("payload").GetChildMemberWithName(name)
    return name, (payload if payload.IsValid() else None)


def _payload_fields(v):
    name, p = enum_case(v)
    if p is None:
        return []
    t = _strip(p.GetType())
    # a case's fields (a struct named "Enum.Case"), or the one type it carries whole
    if t.GetName().endswith("." + name):
        return [p.GetChildAtIndex(i) for i in range(p.GetNumChildren())]
    return [p]


def vec_elements(v):
    n = v.GetChildMemberWithName("n").GetValueAsSigned()
    return _elements(v.GetChildMemberWithName("data"), n)


def map_entries(v):
    """The live entries of a Map, as (key, value) pairs."""
    n = v.GetChildMemberWithName("n").GetValueAsSigned()
    ents = _elements(v.GetChildMemberWithName("ents"), n)
    nexts = _elements(v.GetChildMemberWithName("next"), n)
    out = []
    for e, nx in zip(ents, nexts):
        if nx.GetValueAsSigned() >= -1:
            out.append((e.GetChildMemberWithName("Key"), e.GetChildMemberWithName("Value")))
    return out


def render(v, depth=0):
    """olang's text of a value, as $v writes it, as far as the debug information tells."""
    v = v.GetNonSyntheticValue()
    t = v.GetType()
    if depth > 3:
        return "..."
    if is_text(t):
        return text_of(v)
    if is_array(t):
        return _list(_elements(v, SUMMARY_ITEMS + 1), v.GetChildMemberWithName("len").GetValueAsSigned(), depth)
    if is_vec(t):
        return _list(vec_elements(v)[:SUMMARY_ITEMS + 1], v.GetChildMemberWithName("n").GetValueAsSigned(), depth)
    if is_map(t):
        es = map_entries(v)
        items = ["%s: %s" % (render(k, depth + 1), render(x, depth + 1)) for k, x in es[:SUMMARY_ITEMS]]
        return "[" + ", ".join(items) + (", ...]" if len(es) > SUMMARY_ITEMS else "]")
    if is_enum(t):
        name, p = enum_case(v)
        head = _strip(t).GetName() + "." + name
        if p is None:
            return head
        fs = _payload_fields(v)
        return head + "(" + ", ".join(_field(f, depth) for f in fs) + ")"
    if t.GetCanonicalType().GetTypeClass() == lldb.eTypeClassArray:
        n = v.GetNumChildren()
        return _list([v.GetChildAtIndex(i) for i in range(min(n, SUMMARY_ITEMS))], n, depth)
    fs = _fields(t)
    if fs is not None and not t.GetCanonicalType().GetName().startswith("Array<"):
        return _strip(t).GetName() + "(" + ", ".join(_field(v.GetChildAtIndex(i), depth) for i in range(len(fs))) + ")"
    tn = _strip(t).GetName()
    if tn == "Char":
        c = v.GetValueAsUnsigned()
        return "'%s'" % chr(c) if 32 <= c < 127 else "'\\x%02x'" % c
    if t.GetCanonicalType().IsPointerType():
        a = v.GetValueAsUnsigned()
        return "null" if a == 0 else "&" + render(v.Dereference(), depth + 1)
    return v.GetValue() or v.GetSummary() or "?"


def _field(f, depth):
    return "%s = %s" % (f.GetName(), render(f, depth + 1))


def _list(items, n, depth):
    shown = [render(x, depth + 1) for x in items[:SUMMARY_ITEMS]]
    return "[" + ", ".join(shown) + (", ...]" if n > SUMMARY_ITEMS else "]")


# ---- the formatters ----

def array_summary(v, _dict):
    v = v.GetNonSyntheticValue()
    if is_text(v.GetType()):
        return text_of(v)
    return "len = %d" % v.GetChildMemberWithName("len").GetValueAsSigned()


def vec_summary(v, _dict):
    return "len = %d" % v.GetNonSyntheticValue().GetChildMemberWithName("n").GetValueAsSigned()


def map_summary(v, _dict):
    return "len = %d" % v.GetNonSyntheticValue().GetChildMemberWithName("count").GetValueAsSigned()


def enum_summary(v, _dict):
    return enum_case(v.GetNonSyntheticValue())[0]


class _Children:
    def __init__(self, valobj, _dict):
        self.v = valobj
        self.kids = []

    def num_children(self):
        return len(self.kids)

    def get_child_at_index(self, i):
        return self.kids[i] if 0 <= i < len(self.kids) else None

    def get_child_index(self, name):
        for i, k in enumerate(self.kids):
            if k.GetName() == name:
                return i
        try:
            return int(name.strip("[]"))
        except ValueError:
            return -1

    def has_children(self):
        return True


class ArrayChildren(_Children):
    def update(self):
        self.kids = [] if is_text(self.v.GetType()) else _elements(self.v)
        return False

    def has_children(self):
        return not is_text(self.v.GetType())


class VecChildren(_Children):
    def update(self):
        self.kids = vec_elements(self.v)
        return False


class MapChildren(_Children):
    def update(self):
        self.kids = []
        for k, x in map_entries(self.v):
            self.kids.append(x.CreateValueFromAddress("[%s]" % render(k), x.GetLoadAddress(), x.GetType()))
        return False


class EnumChildren(_Children):
    def update(self):
        self.kids = _payload_fields(self.v)
        return False

    def has_children(self):
        return bool(self.kids)


def register(debugger, module=__name__):
    cat = "olang"
    for test, summary, children in (("is_array", "array_summary", "ArrayChildren"),
                                     ("is_vec", "vec_summary", "VecChildren"),
                                     ("is_map", "map_summary", "MapChildren"),
                                     ("is_enum", "enum_summary", "EnumChildren")):
        debugger.HandleCommand("type summary add -e -w %s -F %s.%s --recognizer-function %s.%s"
                               % (cat, module, summary, module, test))
        debugger.HandleCommand("type synthetic add -w %s -l %s.%s --recognizer-function %s.%s"
                               % (cat, module, children, module, test))
    debugger.HandleCommand("type category enable %s" % cat)


def __lldb_init_module(debugger, _dict):
    register(debugger)
