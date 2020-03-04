-module(space_age).

-export([age/2]).
-type planet() :: mercury | venus | earth | mars | jupiter | saturn | uranus | neptune.

-spec age(planet(), integer()) -> float().
age(Planet, Seconds) -> 
    Seconds / secondsPerYear(Planet).

earthYear() ->
  365.25 * 24 * 60 * 60.

secondsPerYear (mercury) ->
  earthYear() * 0.2408467;
secondsPerYear (venus) ->
  earthYear() * 0.61519726;
secondsPerYear (earth) ->
  earthYear();
secondsPerYear (mars) ->
  earthYear() * 1.8808158;
secondsPerYear (jupiter) ->
  earthYear() * 11.862615;
secondsPerYear (saturn) ->
  earthYear() * 29.447498;
secondsPerYear (uranus) ->
  earthYear() * 84.016846;
secondsPerYear (neptune) ->
  earthYear() * 164.79132.