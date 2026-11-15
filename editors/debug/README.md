# editors/debug - olang values in lldb and gdb

A `-debug` build (SPEC B2e) describes olang's values in DWARF: types by olang's names, structs and payload cases by
field name, run-time arrays as their length and a pointer to the elements. These plug-ins show the rest as `$` writes
it - a run-time array's or a `Vec`'s elements, text as text, the case an enum value is and its fields, a `Map`'s
entries, a struct as `Point(x = 3, y = 4)`. They are Python because the debuggers run no other language.

| file | load it with |
|---|---|
| `olang_lldb.py` | `command script import /path/editors/debug/olang_lldb.py` (lldb, lldb-dap's `initCommands`) |
| `olang_gdb.py` | `source /path/editors/debug/olang_gdb.py` (or `gdb -x` it) |

`editors/nvim` loads the lldb one by itself (`:OlangDebug`, its README). `make install` copies this folder beside the
compiler (`~/.local/lib/olang/editors/debug`). A program driving lldb imports `olang_lldb` and calls `render(value)`
for olang's text of a value. The layouts they read are listed in DEPENDENTS.md ("The editors"); the `dwarf` check
(checks/checks.olang) reads values back through both debuggers.

What each shows for `p := Point(3, 4)`, `s := Shape.Rect(5, 6)`, `t := "hello"`, `v := Vec<I64>[10, 20, 30]`,
`m := Map<String, I64>["a": 1]`:

| | lldb (`frame variable`, lldb-dap's variables) | gdb (`info locals`) |
|---|---|---|
| struct | `(Point) p = Point(x = 3, y = 4)` | `p = {x = 3, y = 4}` |
| enum with payload | `(Shape) s = Shape.Rect(w = 5, h = 6)` | `s = Rect = {w = 5, h = 6}` |
| text | `(String) t = "hello"` | `t = "hello"` |
| Vec | `(Vec<I64>) v = [10, 20, 30]` | `v = len = 3 = {10, 20, 30}` |
| Map | `(Map<String, I64>) m = ["a": 1]` | `m = len = 1 = {["a"] = 1}` |

Without the plug-ins both still show every value by its fields: an enum's case and each case's payload, an array as
`{len, data}`.
