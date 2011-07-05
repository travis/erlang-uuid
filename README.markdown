## erlang-uuid

An Erlang module for work with UUID.

### Usage

    $ cd erlang-uuid
    $ erl -pa ebin/
    Erlang R14A (erts-5.8) [source] [64-bit] [smp:2:2] [rq:2] [async-threads:0] [hipe] [kernel-poll:false]

    Eshell V5.8  (abort with ^G)
    1> UUID = uuid:v4().
    <<23,161,8,3,240,100,71,24,174,70,74,109,60,136,65,92>>
    2> UUIDAsString = uuid:to_string(UUID).
    "17a10803-f064-4718-ae46-4a6d3c88415c"
    3> UUIDAsBinary = uuid:to_binary(UUIDAsString).
    <<23,161,8,3,240,100,71,24,174,70,74,109,60,136,65,92>>

### Copyright

Copyright (c) 2008, Travis Vachon
All rights reserved. See LICENSE.
