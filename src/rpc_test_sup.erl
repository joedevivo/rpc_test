-module(rpc_test_sup).

-behaviour(supervisor).

-export([
         init/1,
         start_link/0
        ]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    MyJava = {my_java,
                  {my_java, start_link, []},
                  permanent, 5000, worker, [my_java]},
    MyHaskell = {my_haskell,
                  {my_haskell, start_link, []},
                  permanent, 5000, worker, [my_haskell]},
    Restart = {one_for_one, 10, 10},

    {ok, {Restart, [MyJava, MyHaskell]}}.
