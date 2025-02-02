(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (memory $0 1)
 (data (i32.const 20) "\01\00\00\00\01")
 (data (i32.const 32) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 64) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 96) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/util/hash/hashStr (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  local.tee $2
  if
   block $break|0
    i32.const 0
    local.set $0
    local.get $2
    i32.const 16
    i32.sub
    i32.load offset=12
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.set $3
    loop $loop|0
     local.get $0
     local.get $3
     i32.ge_u
     br_if $break|0
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     local.get $1
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/util/hash/hash32 (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/util/hash/hash64 (; 2 ;) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $start:std/hash (; 3 ;)
  i32.const 0
  call $~lib/util/hash/hashStr
  drop
  i32.const 32
  call $~lib/util/hash/hashStr
  drop
  i32.const 48
  call $~lib/util/hash/hashStr
  drop
  i32.const 80
  call $~lib/util/hash/hashStr
  drop
  i32.const 112
  call $~lib/util/hash/hashStr
  drop
  i32.const 0
  call $~lib/util/hash/hash32
  drop
  i32.const 1065353216
  call $~lib/util/hash/hash32
  drop
  i32.const 1066192077
  call $~lib/util/hash/hash32
  drop
  i32.const 0
  call $~lib/util/hash/hash32
  drop
  i32.const 2139095040
  call $~lib/util/hash/hash32
  drop
  i32.const 2143289344
  call $~lib/util/hash/hash32
  drop
  i64.const 0
  call $~lib/util/hash/hash64
  drop
  i64.const 4607182418800017408
  call $~lib/util/hash/hash64
  drop
  i64.const 4607632778762754458
  call $~lib/util/hash/hash64
  drop
  i64.const 0
  call $~lib/util/hash/hash64
  drop
  i64.const 9218868437227405312
  call $~lib/util/hash/hash64
  drop
  i64.const 9221120237041090560
  call $~lib/util/hash/hash64
  drop
 )
 (func $start (; 4 ;)
  call $start:std/hash
 )
)
