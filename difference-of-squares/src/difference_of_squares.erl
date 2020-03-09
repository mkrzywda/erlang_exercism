-module(difference_of_squares).

-export([difference_of_squares/1, square_of_sum/1, sum_of_squares/1]).


-spec difference_of_squares(integer()) -> integer().
difference_of_squares(Number) -> square_of_sum(Number) - sum_of_squares(Number).

-spec square_of_sum(integer()) -> integer().
square_of_sum(Number) -> square( lists:sum(lists:seq(1, Number))).

-spec sum_of_squares(integer()) -> integer().
sum_of_squares(Number) -> lists:sum( [square(X) || X <- lists:seq(1, Number)] ).

-spec square(integer()) -> integer().
square(Number) -> erlang:trunc( math:pow(Number, 2) ).