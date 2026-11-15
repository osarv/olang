# io

What leaves a run and what comes into it.

- `checkpoint.olang` - safetensors for `Tensor<T>`: a `Writer` takes tensors by name (`Add`, or `AddAs` into another
  dtype), a `File` reads them by name (`Read` into a tensor the caller has, `Get` into a new one). Dtypes F64 F32 F16
  BF16 F8E4M3 F8E5M2 I64 I32 I16 I8 U64 U32 U16 U8, every element rounded once; a file of one dtype reads into a tensor
  of another. `AddFields` / `ReadFields` name the tensors of a record by the path through its fields
  (`blocks.3.attn.q`; `@checkpoint.Name("c_attn")` on a field replaces its name), by reflection. The test has numpy
  (`bench/ref/safetensors_check.py`) read what is written and the file numpy writes read back, when numpy is there.
- `runlog.olang` - a JSON-lines record of a run: one flat line per step with the run's name, seed, the oann and olang
  commits, the metrics and the timings (`time_NAME`, seconds), and the config on the first line. `Read<R>` gathers the
  lines into a `ColumnVec<R>` for tables.

Test with `olang test io/FILE.olang`; `make test` runs them all.
