-module(uuid).
-export([v4/0, to_string/1, get_parts/1]).
-import(random).

v4() ->
    v4(random:uniform(math:pow(2, 48)) - 1, random:uniform(math:pow(2, 12)) - 1, random:uniform(math:pow(2, 32)) - 1, random:uniform(math:pow(2, 30)) - 1).
v4(R1, R2, R3, R4) ->
    <<R1:48, 4:4, R2:12, 2:2, R3:32, R4: 30>>.
to_string(U) ->
    lists:flatten(io_lib:format("~8.16.0b-~4.16.0b-~4.16.0b-~2.16.0b~2.16.0b-~12.16.0b", get_parts(U))).

get_parts(<<TL:32, TM:16, THV:16, CSR:8, CSL:8, N:48>>) ->
    [TL, TM, THV, CSR, CSL, N].
