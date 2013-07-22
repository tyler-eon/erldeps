%%%-------------------------------------------------------------------
%%% @author  <Tyler Margison>
%%% @copyright (C) 2013
%%% @doc
%%% Easily start or stop a group of application modules.
%%% @end
%%%-------------------------------------------------------------------
-module(erldeps).

%% gen_server callbacks
-export([start/1, stop/1]).

start([]) ->
    ok;
start([App|Deps]) ->
    ok = application:start(App),
    start(Deps).

stop([]) ->
    ok;
stop(Apps) when is_list(Apps) ->
    stop_apps(lists:reverse(Apps)).

stop_apps([]) ->
    ok;
stop_apps([App|Deps]) ->
    application:stop(App),
    stop_apps(Deps).
