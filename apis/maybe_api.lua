return {
  Maybe = {
    description = "#typeMaybe a\n    = Just a\n    | Nothing\n Represent values that may or may not exist. It can be useful if you have a\nrecord field that is only filled in sometimes. Or if a function takes a value\nsometimes, but does not absolutely need it.",
    signature = "typeMaybe a\n    = Just a\n    | Nothing"
  } --[[table: 0x410769f8]],
  andThen = {
    description = "#andThen:Maybe a -> (a ->Maybe b) ->Maybe b\n Chain together many computations that may fail. It is helpful to see its\ndefinition:",
    signature = "andThen:Maybe a -> (a ->Maybe b) ->Maybe b"
  } --[[table: 0x410b8738]],
  map = {
    description = "#map: (a -> b) ->Maybe a ->Maybe b\n Transform a Maybe value with a given function:",
    signature = "map: (a -> b) ->Maybe a ->Maybe b"
  } --[[table: 0x41077618]],
  map2 = {
    description = "#map2: (a -> b -> value) ->Maybe a ->Maybe b ->Maybe value\n Apply a function if all the arguments are Just a value.",
    signature = "map2: (a -> b -> value) ->Maybe a ->Maybe b ->Maybe value"
  } --[[table: 0x410766d8]],
  map3 = {
    description = "#map3:  (a -> b -> c -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe value\n",
    signature = "map3:  (a -> b -> c -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe value"
  } --[[table: 0x410b5e30]],
  map4 = {
    description = "#map4:  (a -> b -> c -> d -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe value\n",
    signature = "map4:  (a -> b -> c -> d -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe value"
  } --[[table: 0x410b7b18]],
  map5 = {
    description = "#map5:  (a -> b -> c -> d -> e -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe e\n    ->Maybe value\n",
    signature = "map5:  (a -> b -> c -> d -> e -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe e\n    ->Maybe value"
  } --[[table: 0x410b8040]],
  oneOf = {
    description = "#oneOf: List (Maybe a) ->Maybe a\n Pick the first Maybe that actually has a value. Useful when you want to\ntry a couple different things, but there is no default value.",
    signature = "oneOf: List (Maybe a) ->Maybe a"
  } --[[table: 0x410772b0]],
  withDefault = {
    description = "#withDefault: a ->Maybe a -> a\n Provide a default value, turning an optional value into a normal\nvalue.  This comes in handy when paired with functions like\nDict.get which gives back a Maybe.",
    signature = "withDefault: a ->Maybe a -> a"
  } --[[table: 0x41076ee0]]
} --[[table: 0x41076468]]