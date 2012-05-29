-module(hello).

-export([init/0, world/0]).

init() ->
      erlang:load_nif("./priv/hello", 0).

world() ->
      "NIF library not loaded".
