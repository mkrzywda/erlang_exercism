-module(space_age).

-export([age/2]).
-type planet() :: mercury | venus | earth | mars | jupiter | saturn | uranus | neptune.
-export_type [planet/0]

-spec age(planet(), pos_integer()) -> float().
age(Planet, Seconds) -> 
    Seconds / seconds_per_year(Planet).

earth_year() ->
  365.25 * 24 * 60 * 60.

seconds_per_year (mercury) ->
  earth_year() * 0.2408467;
seconds_per_year (venus) ->
  earth_year() * 0.61519726;
seconds_per_year (earth) ->
  earth_year();
seconds_per_year (mars) ->
  earth_year() * 1.8808158;
seconds_per_year (jupiter) ->
  earth_year() * 11.862615;
seconds_per_year (saturn) ->
  earth_year() * 29.447498;
seconds_per_year (uranus) ->
  earth_year() * 84.016846;
seconds_per_year (neptune) ->
  earth_year() * 164.79132.