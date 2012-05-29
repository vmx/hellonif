Hello NIF
=========

This is a really basic NIF to test that everything compiles fine.

This is how you use it:

    $ ./rebar compile
    ==> helloworld (compile)
    Compiled src/hello.erl
    Compiling c_src/hello.c

    $ erl -pa ebin
    Erlang R15B01 (erts-5.9.1) [source] [64-bit] [smp:4:4] [async-threads:0] [kernel-poll:false]

    Eshell V5.9.1  (abort with ^G)
    1> hello:init().
    ok
    2> hello:world().
    "Hello world!"
