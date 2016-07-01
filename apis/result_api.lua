return {
  Result = {
    description = "#typeResult error value\n    = Ok value\n    | Err error\n A Result is either Ok meaning the computation succeeded, or it is an\nErr meaning that there was some failure.",
    signature = "typeResult error value\n    = Ok value\n    | Err error"
  } --[[table: 0x406f8730]],
  andThen = {
    description = "#andThen:Result x a -> (a ->Result x b) ->Result x b\n Chain together a sequence of computations that may fail. It is helpful\nto see its definition:",
    signature = "andThen:Result x a -> (a ->Result x b) ->Result x b"
  } --[[table: 0x406fb300]],
  formatError = {
    description = "#formatError:  (error -> error')\n    ->Result error a\n    ->Result error' a\n Format the error value of a result. If the result is Ok, it stays exactly\nthe same, but if the result is an Err we will format the error. For example,\nsay the errors we get have too much information:",
    signature = "formatError:  (error -> error')\n    ->Result error a\n    ->Result error' a"
  } --[[table: 0x406fcdd8]],
  fromMaybe = {
    description = "#fromMaybe: x ->Maybe a ->Result x a\n Convert from a simple Maybe to interact with some code that primarily\nuses Results.",
    signature = "fromMaybe: x ->Maybe a ->Result x a"
  } --[[table: 0x406fc3d0]],
  map = {
    description = "#map: (a -> value) ->Result x a ->Result x value\n Apply a function to a result. If the result is Ok, it will be converted.\nIf the result is an Err, the same error value will propagate through.",
    signature = "map: (a -> value) ->Result x a ->Result x value"
  } --[[table: 0x406f8bb0]],
  map2 = {
    description = "#map2:  (a -> b -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x value\n Apply a function to two results, if both results are Ok. If not,\nthe first argument which is an Err will propagate through.",
    signature = "map2:  (a -> b -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x value"
  } --[[table: 0x406f9028]],
  map3 = {
    description = "#map3:  (a -> b -> c -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x value\n",
    signature = "map3:  (a -> b -> c -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x value"
  } --[[table: 0x406f9588]],
  map4 = {
    description = "#map4:  (a -> b -> c -> d -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x value\n",
    signature = "map4:  (a -> b -> c -> d -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x value"
  } --[[table: 0x406faa50]],
  map5 = {
    description = "#map5:  (a -> b -> c -> d -> e -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x e\n    ->Result x value\n",
    signature = "map5:  (a -> b -> c -> d -> e -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x e\n    ->Result x value"
  } --[[table: 0x406faef8]],
  toMaybe = {
    description = "#toMaybe:Result x a ->Maybe a\n Convert to a simpler Maybe if the actual error message is not needed or\nyou need to interact with some code that primarily uses maybes.",
    signature = "toMaybe:Result x a ->Maybe a"
  } --[[table: 0x406fbee0]],
  withDefault = {
    description = "#withDefault: a ->Result x a -> a\n If the result is Ok return the value, but if the result is an Err then\nreturn a given default value. The following examples try to parse integers.",
    signature = "withDefault: a ->Result x a -> a"
  } --[[table: 0x406fbb40]]
} --[[table: 0x406f8020]]