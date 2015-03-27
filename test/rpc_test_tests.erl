-module(rpc_test_tests).

-include_lib("eunit/include/eunit.hrl").

rpc_test_test_() ->
    {setup,
     fun() ->
             ok
     end,
     fun(_) ->
             ok
     end,
     [
      {"rpc_test is alive",
       fun() ->
               %% format is always: expected, actual
               ?assertEqual(howdy, rpc_test:hello())
       end}
      ]}.

