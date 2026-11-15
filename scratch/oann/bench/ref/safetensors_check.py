# safetensors read and written with nothing but struct, json and numpy - no safetensors package, no code shared with
# oann - to check checkpoint.olang against the format itself:
#
#     python3 -I bench/ref/safetensors_check.py DIR
#
# 1. reads DIR/oann_{f32,f16,bf16,f64}.safetensors (bench/safetensors.olang write DIR): the header's length, that it
#    is JSON of tensors padded with spaces to a multiple of 8, that the tensors' byte ranges cover the data with no
#    hole or overlap; then every tensor's elements, compared bit by bit with oann_values.json rounded here - numpy's
#    own rounding for F32 and F16, round-to-nearest-even on the F32 bits for BF16 (numpy has no bfloat16);
# 2. writes DIR/py.safetensors and DIR/py_values.json for "safetensors read DIR": four tensors, one per dtype, in an
#    order of their own, a vector for a one-row parameter, metadata, and a header left unpadded.

import json
import struct
import sys

import numpy as np

DTYPES = {"F64": "<f8", "F32": "<f4", "F16": "<f2", "BF16": "<u2"}


def read(path):
    data = open(path, "rb").read()
    (n,) = struct.unpack("<Q", data[:8])
    raw = data[8:8 + n]
    assert raw[:1] == b"{", "the header must start with {"
    assert (8 + n) % 8 == 0 and raw == raw.rstrip(b" ") + b" " * (len(raw) - len(raw.rstrip(b" "))), "padding"
    header = json.loads(raw)
    meta = header.pop("__metadata__", {})
    body = data[8 + n:]
    spans = sorted((t["data_offsets"][0], t["data_offsets"][1]) for t in header.values())
    at = 0
    for b, e in spans:
        assert b == at, "a hole or an overlap in the data"
        at = e
    assert at == len(body), "the data is longer than its tensors"
    tensors = {}
    for name, t in header.items():
        b, e = t["data_offsets"]
        a = np.frombuffer(body[b:e], dtype=DTYPES[t["dtype"]])
        assert a.size == int(np.prod(t["shape"])), name
        tensors[name] = (t["dtype"], list(t["shape"]), a)
    return meta, tensors


def bf16_bits(x32):
    u = x32.view(np.uint32).astype(np.uint64)
    return ((u + 0x7FFF + ((u >> 16) & 1)) >> 16).astype(np.uint16)


def expected_bits(values, dtype):
    v = np.array(values, dtype=np.float64)
    if dtype == "F64":
        return v.view(np.uint64)
    x32 = v.astype(np.float32)
    assert np.array_equal(x32.astype(np.float64), v), "an F32 graph's values are F32"
    if dtype == "F32":
        return x32.view(np.uint32)
    if dtype == "F16":
        with np.errstate(over="ignore"):
            return x32.astype(np.float16).view(np.uint16)
    return bf16_bits(x32)


def check(d):
    values = json.loads(open(f"{d}/oann_values.json").read(), parse_int=float)
    total = 0
    for dtype, source in (("F32", "f32"), ("F16", "f32"), ("BF16", "f32"), ("F64", "f64")):
        meta, tensors = read(f"{d}/oann_{dtype.lower()}.safetensors")
        assert meta == {"format": "pt"}, meta
        assert set(tensors) == set(values[source]), sorted(tensors)
        for name, (dt, shape, a) in tensors.items():
            assert dt == dtype, (name, dt)
            want = expected_bits(values[source][name], dtype)
            rows = 1 if len(shape) == 1 else shape[0]
            assert shape[-1] * rows == want.size, (name, shape)
            assert np.array_equal(a.view(want.dtype), want), (dtype, name, a, want)
            total += a.size
        print(f"oann_{dtype.lower()}.safetensors: {len(tensors)} tensors, shapes "
              + ", ".join(f"{n} {s}" for n, (_, s, _) in tensors.items()) + ": every element as numpy rounds it")
    print(f"{total} elements checked bit by bit")


def write(d):
    rng = np.random.default_rng(7)
    a = rng.standard_normal((3, 4)).astype(np.float32)
    b = np.array([0.0, -0.0, 2.0 ** -20, 65504.0, 0.333], dtype=np.float16)
    c32 = (rng.standard_normal((2, 3)) * 1e-36).astype(np.float32)
    c32[0, 0] = 1.0 / 3.0
    c = bf16_bits(c32)
    dd = np.array([[0.1, -1e300], [5e-324, 2.0]], dtype=np.float64)
    blobs = [("d", "F64", [2, 2], dd.astype("<f8").tobytes()), ("b", "F16", [5], b.astype("<f2").tobytes()),
             ("a", "F32", [3, 4], a.astype("<f4").tobytes()), ("c", "BF16", [2, 3], c.astype("<u2").tobytes())]
    header = {"__metadata__": {"producer": "numpy", "note": "unpadded"}}
    body = b""
    for name, dtype, shape, blob in blobs:
        header[name] = {"dtype": dtype, "shape": shape, "data_offsets": [len(body), len(body) + len(blob)]}
        body += blob
    order = ["c", "__metadata__", "a", "d", "b"]
    raw = json.dumps({k: header[k] for k in order}).encode()
    open(f"{d}/py.safetensors", "wb").write(struct.pack("<Q", len(raw)) + raw + body)
    c_values = (c.astype(np.uint32) << 16).view(np.float32)
    exact = {"a": a.astype(np.float64), "b": b.astype(np.float64), "c": c_values.astype(np.float64), "d": dd}
    values = {k: [repr(float(x)) for x in v.ravel()] for k, v in exact.items()}
    text = "{" + ", ".join(f'"{k}": [' + ", ".join(v) + "]" for k, v in values.items()) + "}\n"
    open(f"{d}/py_values.json", "w").write(text)
    print(f"wrote {d}/py.safetensors: a F32 [3, 4], b F16 [5], c BF16 [2, 3], d F64 [2, 2], header unpadded")


check(sys.argv[1])
write(sys.argv[1])
