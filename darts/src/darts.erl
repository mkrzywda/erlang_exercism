-module(darts).
-export([score/2]).
-import(math,[pow/2]).

score(X, Y) -> score(math:sqrt(math:pow(X,2) + math:pow(Y,2)).


score(R) when R =< 1.0 -> 10;
score(R) when R =< 5.0 -> 5;
score(R) when R =< 10.0 -> 1;
score(_) -> 0.
