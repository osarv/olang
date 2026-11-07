# Round "packed" (wt-packed, /home/user/wt/packed; opus high) - packed / declared-layout structs

Read /home/user/review/rounds/finish-rules.md first: the rules of work for today (no full verify, one quick at the end).

The user decided (2026-11-07, QCX 2): packed structs - `type Header packed struct(version U4, ihl U4, length U16) {
version, ihl, length }`: no padding, every field at its exact bit width, for wire formats, file headers, hardware
registers and the FPGA path (the integers of every width, I1-I128 and U1-U128, exist - T4a).

Settle and build (details yours, recorded as decisions; spec first):
- the spelling: `packed` a word of one place before `struct`, as `immut` and `unique` are (L9b);
- the layout: fields from the lowest bit up in declaration order (GCC's on little-endian x86-64 and AArch64), the size
  rounded up to whole bytes, alignment 1; what a field may be (integers of any width, Bool, Char, floats, enums without
  payloads by their tag width or a raw-value enum by its raw type, nested packed structs, fixed arrays of those) and
  what it may not (references, run-time arrays, function values, `any`) - each refusal an error naming the rule;
- field reads and writes by shifts and masks (emit), the same in the evaluator and `interpret`; a field of a packed
  struct is no place a reference can name (lending one writably copies in and out, or is an error - choose and say);
- reflection: `T.Size`, `T.Align`, `f.Offset` (say whether bits or bytes - a packed field's offset may be inside a byte)
  and anything new it needs; `$`, ==, Hash, json, Copy;
- C: a packed struct crossing the C boundary as C's `__attribute__((packed))` / bitfields where they agree (say exactly
  where they do), and C imports translating packed and bitfield records into packed structs where the layout matches
  (today they become opaque words - X19/X22), else left as they are;
- tests (a corpus file, the evaluator deciding a packed value's fields while compiling) and checks cases for every
  refusal.
