-module(hello).

-export([init/0, world/0]).

world() ->
      "NIF library not loaded".

init() ->
    SoName = case code:priv_dir(?MODULE) of
    {error, bad_name} ->
        case filelib:is_dir(filename:join(["..", priv])) of
        true ->
            filename:join(["..", priv, ?MODULE]);
        false ->
            filename:join([priv, ?MODULE])
        end;
    Dir ->
        filename:join(Dir, ?MODULE)
    end,
    (catch erlang:load_nif(SoName, 0)),
    case erlang:system_info(otp_release) of
    "R13B03" -> true;
    _ -> ok
    end.



