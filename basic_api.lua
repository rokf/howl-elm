return {
  Never = {
    description = "#typeNever\n A type that is \"uninhabited\". There are no values of type Never, and its\nprimary use is demanding that certain tasks cannot possibly fail.",
    signature = "typeNever"
  } --[[table: 0x4001ae10]],
  Order = {
    description = "#typeOrder\n    = LT\n    | EQ\n    | GT\n Represents the relative ordering of two things.\nThe relations are less than, equal to, and greater than.",
    signature = "typeOrder\n    = LT\n    | EQ\n    | GT"
  } --[[table: 0x4099db38]],
  abs = {
    description = "#abs: number -> number\n Take the absolute value of a number. ",
    signature = "abs: number -> number"
  } --[[table: 0x40010d20]],
  acos = {
    description = "#acos: Float -> Float\n",
    signature = "acos: Float -> Float"
  } --[[table: 0x40013fd8]],
  always = {
    description = "#always: a -> b -> a\n Create a constant function,\na function that always returns the same value regardless of what input you give.\nIt is defined as:",
    signature = "always: a -> b -> a"
  } --[[table: 0x4001a068]],
  asin = {
    description = "#asin: Float -> Float\n",
    signature = "asin: Float -> Float"
  } --[[table: 0x40014278]],
  atan = {
    description = "#atan: Float -> Float\n You probably do not want to use this. It takes (y/x) as the\nargument, so there is no way to know whether the negative signs comes from\nthe y or x. Thus, the resulting angle is always between π/2 and -π/2\n(in quadrants I and IV). You probably want to use atan2 instead.",
    signature = "atan: Float -> Float"
  } --[[table: 0x400146b0]],
  atan2 = {
    description = "#atan2: Float -> Float -> Float\n This helps you find the angle of a Cartesian coordinate.\nYou will almost certainly want to use this instead of atan.\nSo atan2 y x computes atan(y/x) but also keeps track of which\nquadrant the angle should really be in. The result will be between\nπ and -π, giving you the full range of angles.",
    signature = "atan2: Float -> Float -> Float"
  } --[[table: 0x40014c80]],
  ceiling = {
    description = "#ceiling: Float -> Int\n Ceiling function, rounding up. ",
    signature = "ceiling: Float -> Int"
  } --[[table: 0x40015ca8]],
  clamp = {
    description = "#clamp: number -> number -> number -> number\n Clamps a number within a given range. With the expression\nclamp 100 200 x the results are as follows:",
    signature = "clamp: number -> number -> number -> number"
  } --[[table: 0x4000b870]],
  compare = {
    description = "#compare: comparable -> comparable ->Order\n Compare any two comparable values. Comparable values include String, Char,\nInt, Float, Time, or a list or tuple containing comparable values.\nThese are also the only values that work as Dict keys or Set members.",
    signature = "compare: comparable -> comparable ->Order"
  } --[[table: 0x4000df80]],
  cos = {
    description = "#cos: Float -> Float\n",
    signature = "cos: Float -> Float"
  } --[[table: 0x400127c0]],
  curry = {
    description = "#curry: ((a, b) -> c) -> a -> b -> c\n Change how arguments are passed to a function.\nThis splits paired arguments into two separate arguments.",
    signature = "curry: ((a, b) -> c) -> a -> b -> c"
  } --[[table: 0x4001a710]],
  degrees = {
    description = "#degrees: Float -> Float\n Convert degrees to standard Elm angles (radians). ",
    signature = "degrees: Float -> Float"
  } --[[table: 0x40016520]],
  e = {
    description = "#e: Float\n An approximation of e. ",
    signature = "e: Float"
  } --[[table: 0x40012288]],
  flip = {
    description = "#flip: (a -> b -> c) -> b -> a -> c\n Flip the order of the first two arguments to a function. ",
    signature = "flip: (a -> b -> c) -> b -> a -> c"
  } --[[table: 0x4001a3d8]],
  floor = {
    description = "#floor: Float -> Int\n Floor function, rounding down. ",
    signature = "floor: Float -> Int"
  } --[[table: 0x400159e0]],
  fromPolar = {
    description = "#fromPolar: (Float, Float) -> (Float, Float)\n Convert polar coordinates (r,θ) to Cartesian coordinates (x,y). ",
    signature = "fromPolar: (Float, Float) -> (Float, Float)"
  } --[[table: 0x40017e98]],
  fst = {
    description = "#fst: (a, b) -> a\n Given a 2-tuple, returns the first value. ",
    signature = "fst: (a, b) -> a"
  } --[[table: 0x40019468]],
  identity = {
    description = "#identity: a -> a\n Given a value, returns exactly the same value. This is called\nthe identity function.",
    signature = "identity: a -> a"
  } --[[table: 0x40019cb0]],
  isInfinite = {
    description = "#isInfinite: Float -> Bool\n Determine whether a float is positive or negative infinity.",
    signature = "isInfinite: Float -> Bool"
  } --[[table: 0x400185d0]],
  isNaN = {
    description = "#isNaN: Float -> Bool\n Determine whether a float is an undefined or unrepresentable number.\nNaN stands for not a number and it is a standardized part of floating point\nnumbers.",
    signature = "isNaN: Float -> Bool"
  } --[[table: 0x40018278]],
  logBase = {
    description = "#logBase: Float -> Float -> Float\n Calculate the logarithm of a number with a given base.",
    signature = "logBase: Float -> Float -> Float"
  } --[[table: 0x4000bbd8]],
  max = {
    description = "#max: comparable -> comparable -> comparable\n Find the larger of two comparables. ",
    signature = "max: comparable -> comparable -> comparable"
  } --[[table: 0x4000b010]],
  min = {
    description = "#min: comparable -> comparable -> comparable\n Find the smaller of two comparables. ",
    signature = "min: comparable -> comparable -> comparable"
  } --[[table: 0x4099d640]],
  negate = {
    description = "#negate: number -> number\n Negate a number.",
    signature = "negate: number -> number"
  } --[[table: 0x4000fdd0]],
  ["not"] = {
    description = "#not: Bool -> Bool\n Negate a boolean value.",
    signature = "not: Bool -> Bool"
  } --[[table: 0x4000f2d0]],
  pi = {
    description = "#pi: Float\n An approximation of pi. ",
    signature = "pi: Float"
  } --[[table: 0x40012510]],
  radians = {
    description = "#radians: Float -> Float\n Convert radians to standard Elm angles (radians). ",
    signature = "radians: Float -> Float"
  } --[[table: 0x40017590]],
  rem = {
    description = "#rem: Int -> Int -> Int\n Find the remainder after dividing one number by another.",
    signature = "rem: Int -> Int -> Int"
  } --[[table: 0x4000fae8]],
  round = {
    description = "#round: Float -> Int\n Round a number to the nearest integer. ",
    signature = "round: Float -> Int"
  } --[[table: 0x40015718]],
  sin = {
    description = "#sin: Float -> Float\n",
    signature = "sin: Float -> Float"
  } --[[table: 0x40012a60]],
  snd = {
    description = "#snd: (a, b) -> b\n Given a 2-tuple, returns the second value. ",
    signature = "snd: (a, b) -> b"
  } --[[table: 0x40019730]],
  sqrt = {
    description = "#sqrt: Float -> Float\n Take the square root of a number. ",
    signature = "sqrt: Float -> Float"
  } --[[table: 0x400110c0]],
  tan = {
    description = "#tan: Float -> Float\n",
    signature = "tan: Float -> Float"
  } --[[table: 0x4099d8d0]],
  toFloat = {
    description = "#toFloat: Int -> Float\n Convert an integer into a float. ",
    signature = "toFloat: Int -> Float"
  } --[[table: 0x40016250]],
  toPolar = {
    description = "#toPolar: (Float, Float) -> (Float, Float)\n Convert Cartesian coordinates (x,y) to polar coordinates (r,θ). ",
    signature = "toPolar: (Float, Float) -> (Float, Float)"
  } --[[table: 0x40017b78]],
  toString = {
    description = "#toString: a -> String\n Turn any kind of value into a string. When you view the resulting string\nwith Text.fromString it should look just like the value it came from.",
    signature = "toString: a -> String"
  } --[[table: 0x40019158]],
  truncate = {
    description = "#truncate: Float -> Int\n Truncate a number, rounding towards zero. ",
    signature = "truncate: Float -> Int"
  } --[[table: 0x40015f78]],
  turns = {
    description = "#turns: Float -> Float\n Convert turns to standard Elm angles (radians).\nOne turn is equal to 360°.",
    signature = "turns: Float -> Float"
  } --[[table: 0x40017868]],
  uncurry = {
    description = "#uncurry: (a -> b -> c) -> (a, b) -> c\n Change how arguments are passed to a function.\nThis combines two arguments into a single pair.",
    signature = "uncurry: (a -> b -> c) -> (a, b) -> c"
  } --[[table: 0x4001aa80]],
  xor = {
    description = "#xor: Bool -> Bool -> Bool\n The exclusive-or operator. True if exactly one input is True. ",
    signature = "xor: Bool -> Bool -> Bool"
  } --[[table: 0x4000f800]]
} --[[table: 0x41bdca60]]