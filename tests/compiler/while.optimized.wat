(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00w\00h\00i\00l\00e\00.\00t\00s")
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:while (; 1 ;)
  (local $0 i32)
  loop $continue|0
   global.get $while/n
   if
    global.get $while/n
    i32.const 1
    i32.sub
    global.set $while/n
    global.get $while/m
    i32.const 1
    i32.add
    global.set $while/m
    br $continue|0
   end
  end
  global.get $while/n
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/m
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  global.set $while/n
  i32.const 0
  global.set $while/m
  loop $continue|1
   global.get $while/n
   if
    global.get $while/n
    i32.const 1
    i32.sub
    global.set $while/n
    global.get $while/m
    i32.const 1
    i32.add
    global.set $while/m
    loop $continue|2
     global.get $while/n
     if
      global.get $while/n
      i32.const 1
      i32.sub
      global.set $while/n
      global.get $while/o
      i32.const 1
      i32.add
      global.set $while/o
      br $continue|2
     end
    end
    global.get $while/n
    if
     i32.const 0
     i32.const 32
     i32.const 21
     i32.const 2
     call $~lib/builtins/abort
     unreachable
    end
    global.get $while/o
    i32.const 9
    i32.eq
    br_if $continue|1
    i32.const 0
    i32.const 32
    i32.const 22
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $while/n
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/m
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/o
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/n
  i32.const 0
  global.set $while/m
  loop $continue|3
   global.get $while/n
   local.tee $0
   i32.const 1
   i32.sub
   global.set $while/n
   local.get $0
   if (result i32)
    global.get $while/m
    i32.const 1
    i32.add
    global.set $while/m
    global.get $while/m
   else
    i32.const 0
   end
   br_if $continue|3
  end
  global.get $while/n
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/m
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;)
  call $start:while
 )
)
