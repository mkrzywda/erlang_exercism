-module(accumulate).

-export([accumulate/2]).

-spec accumulate(fun((A) -> B), list(A)) -> list(B).

accumulate(Fn, List) ->
		accumulate(List, Fn, []).

accumulate([H|T], Fn, Out) ->
		accumulate(T, Fn, [Fn(H) | Out]);

accumulate([], _Fn, Out) -> 
		lists:reverse(Out).