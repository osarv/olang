# olang values in gdb: run-time arrays and text, enums carrying payloads, Vec and Map shown as olang writes them. Load
# with
#
#   source /path/to/olang/editors/debug/olang_gdb.py
#
# (or gdb -x it). A debugger plug-in, so Python: gdb runs no other language. The layouts it reads are olang_lldb.py's.

import gdb

MAX_ITEMS = 10000
MAX_TEXT = 4096


def _fields(t):
    t = t.strip_typedefs()
    if t.code != gdb.TYPE_CODE_STRUCT:
        return None
    return t.fields()


def _names(t):
    fs = _fields(t)
    return [f.name for f in fs] if fs is not None else None


def is_array(t):
    fs = _fields(t)
    return (fs is not None and len(fs) == 2 and fs[0].name == "len" and fs[1].name == "data"
            and fs[1].type.strip_typedefs().code == gdb.TYPE_CODE_PTR)


def is_text(t):
    return is_array(t) and str(_fields(t)[1].type.target().unqualified()) == "Char"


def is_enum(t):
    fs = _fields(t)
    return (fs is not None and len(fs) == 2 and fs[0].name == "case" and fs[1].name == "payload"
            and fs[1].type.strip_typedefs().code == gdb.TYPE_CODE_UNION)


def _tag(t):
    return t.strip_typedefs().tag or t.strip_typedefs().name or ""


def is_vec(t):
    n = _names(t)
    return n is not None and _tag(t).startswith("Vec<") and n[:2] == ["data", "n"]


def is_map(t):
    n = _names(t)
    return n is not None and _tag(t).startswith("Map<") and n[:4] == ["ents", "next", "buckets", "n"]


def _elements(arr, count=None):
    n = int(arr["len"])
    count = n if count is None else min(count, n)
    data = arr["data"]
    return [data[i] for i in range(max(0, min(count, MAX_ITEMS)))]


def enum_case(v):
    case = v["case"]
    name = str(case)
    payload = v["payload"]
    names = [f.name for f in payload.type.strip_typedefs().fields()]
    return name, (payload[name] if name in names else None)


def _payload_fields(v):
    name, p = enum_case(v)
    if p is None:
        return []
    t = p.type.strip_typedefs()
    if (t.tag or t.name or "").endswith("." + name):
        return [(f.name, p[f.name]) for f in t.fields()]
    return [(name, p)]


class ArrayPrinter:
    def __init__(self, v):
        self.v = v

    def to_string(self):
        if is_text(self.v.type):
            n = int(self.v["len"])
            return self.v["data"].cast(gdb.lookup_type("char").pointer()).lazy_string(length=min(n, MAX_TEXT)) \
                if n > 0 else '""'
        return "len = %d" % int(self.v["len"])

    def display_hint(self):
        return "string" if is_text(self.v.type) else "array"

    def children(self):
        if is_text(self.v.type):
            return
        for i, x in enumerate(_elements(self.v)):
            yield "[%d]" % i, x


class VecPrinter:
    def __init__(self, v):
        self.v = v

    def to_string(self):
        return "len = %d" % int(self.v["n"])

    def display_hint(self):
        return "array"

    def children(self):
        for i, x in enumerate(_elements(self.v["data"], int(self.v["n"]))):
            yield "[%d]" % i, x


class MapPrinter:
    def __init__(self, v):
        self.v = v

    def to_string(self):
        return "len = %d" % int(self.v["count"])

    def display_hint(self):
        return "map"

    def children(self):
        n = int(self.v["n"])
        ents = _elements(self.v["ents"], n)
        nexts = _elements(self.v["next"], n)
        for i, (e, nx) in enumerate(zip(ents, nexts)):
            if int(nx) >= -1:
                yield "k%d" % i, e["Key"]
                yield "v%d" % i, e["Value"]


class EnumPrinter:
    def __init__(self, v):
        self.v = v

    def to_string(self):
        return enum_case(self.v)[0]

    def children(self):
        for name, x in _payload_fields(self.v):
            yield name, x


def lookup(v):
    t = v.type
    if t.strip_typedefs().code == gdb.TYPE_CODE_PTR:
        return None
    if is_array(t):
        return ArrayPrinter(v)
    if is_enum(t):
        return EnumPrinter(v)
    if is_vec(t):
        return VecPrinter(v)
    if is_map(t):
        return MapPrinter(v)
    return None


gdb.pretty_printers.append(lookup)
