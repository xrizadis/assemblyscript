(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 1) $class-static-function/Example.staticFunc)
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $class-static-function/Example.staticFunc (; 1 ;) (result i32)
  i32.const 42
 )
 (func $start (; 2 ;)
  i32.const 0
  global.set $~lib/argc
 )
)
