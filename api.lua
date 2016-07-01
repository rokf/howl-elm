return {
  Never = {
    description = "#typeNever\n A type that is \"uninhabited\". There are no values of type Never, and its\nprimary use is demanding that certain tasks cannot possibly fail.",
    signature = "typeNever"
  } --[[table: 0x41c6a898]],
  Order = {
    description = "#typeOrder\n    = LT\n    | EQ\n    | GT\n Represents the relative ordering of two things.\nThe relations are less than, equal to, and greater than.",
    signature = "typeOrder\n    = LT\n    | EQ\n    | GT"
  } --[[table: 0x418e5048]],
  abs = {
    description = "#abs: number -> number\n Take the absolute value of a number. ",
    signature = "abs: number -> number"
  } --[[table: 0x41c5be90]],
  acos = {
    description = "#acos: Float -> Float\n",
    signature = "acos: Float -> Float"
  } --[[table: 0x41c62978]],
  always = {
    description = "#always: a -> b -> a\n Create a constant function,\na function that always returns the same value regardless of what input you give.\nIt is defined as:",
    signature = "always: a -> b -> a"
  } --[[table: 0x41c69458]],
  asin = {
    description = "#asin: Float -> Float\n",
    signature = "asin: Float -> Float"
  } --[[table: 0x41c62bf8]],
  atan = {
    description = "#atan: Float -> Float\n You probably do not want to use this. It takes (y/x) as the\nargument, so there is no way to know whether the negative signs comes from\nthe y or x. Thus, the resulting angle is always between π/2 and -π/2\n(in quadrants I and IV). You probably want to use atan2 instead.",
    signature = "atan: Float -> Float"
  } --[[table: 0x41c63030]],
  atan2 = {
    description = "#atan2: Float -> Float -> Float\n This helps you find the angle of a Cartesian coordinate.\nYou will almost certainly want to use this instead of atan.\nSo atan2 y x computes atan(y/x) but also keeps track of which\nquadrant the angle should really be in. The result will be between\nπ and -π, giving you the full range of angles.",
    signature = "atan2: Float -> Float -> Float"
  } --[[table: 0x41c63600]],
  ceiling = {
    description = "#ceiling: Float -> Int\n Ceiling function, rounding up. ",
    signature = "ceiling: Float -> Int"
  } --[[table: 0x41c65068]],
  clamp = {
    description = "#clamp: number -> number -> number -> number\n Clamps a number within a given range. With the expression\nclamp 100 200 x the results are as follows:",
    signature = "clamp: number -> number -> number -> number"
  } --[[table: 0x418e5d80]],
  compare = {
    description = "#compare: comparable -> comparable ->Order\n Compare any two comparable values. Comparable values include String, Char,\nInt, Float, Time, or a list or tuple containing comparable values.\nThese are also the only values that work as Dict keys or Set members.",
    signature = "compare: comparable -> comparable ->Order"
  } --[[table: 0x418e5508]],
  cos = {
    description = "#cos: Float -> Float\n",
    signature = "cos: Float -> Float"
  } --[[table: 0x41c61360]],
  curry = {
    description = "#curry: ((a, b) -> c) -> a -> b -> c\n Change how arguments are passed to a function.\nThis splits paired arguments into two separate arguments.",
    signature = "curry: ((a, b) -> c) -> a -> b -> c"
  } --[[table: 0x41c6a170]],
  degrees = {
    description = "#degrees: Float -> Float\n Convert degrees to standard Elm angles (radians). ",
    signature = "degrees: Float -> Float"
  } --[[table: 0x41c658e0]],
  e = {
    description = "#e: Float\n An approximation of e. ",
    signature = "e: Float"
  } --[[table: 0x41c60e40]],
  flip = {
    description = "#flip: (a -> b -> c) -> b -> a -> c\n Flip the order of the first two arguments to a function. ",
    signature = "flip: (a -> b -> c) -> b -> a -> c"
  } --[[table: 0x41c697c8]],
  floor = {
    description = "#floor: Float -> Int\n Floor function, rounding down. ",
    signature = "floor: Float -> Int"
  } --[[table: 0x41c64da0]],
  fromPolar = {
    description = "#fromPolar: (Float, Float) -> (Float, Float)\n Convert polar coordinates (r,θ) to Cartesian coordinates (x,y). ",
    signature = "fromPolar: (Float, Float) -> (Float, Float)"
  } --[[table: 0x41c664c8]],
  fst = {
    description = "#fst: (a, b) -> a\n Given a 2-tuple, returns the first value. ",
    signature = "fst: (a, b) -> a"
  } --[[table: 0x41c68858]],
  identity = {
    description = "#identity: a -> a\n Given a value, returns exactly the same value. This is called\nthe identity function.",
    signature = "identity: a -> a"
  } --[[table: 0x41c690a0]],
  isInfinite = {
    description = "#isInfinite: Float -> Bool\n Determine whether a float is positive or negative infinity.",
    signature = "isInfinite: Float -> Bool"
  } --[[table: 0x41c66c00]],
  isNaN = {
    description = "#isNaN: Float -> Bool\n Determine whether a float is an undefined or unrepresentable number.\nNaN stands for not a number and it is a standardized part of floating point\nnumbers.",
    signature = "isNaN: Float -> Bool"
  } --[[table: 0x41c668a8]],
  logBase = {
    description = "#logBase: Float -> Float -> Float\n Calculate the logarithm of a number with a given base.",
    signature = "logBase: Float -> Float -> Float"
  } --[[table: 0x418e60e8]],
  max = {
    description = "#max: comparable -> comparable -> comparable\n Find the larger of two comparables. ",
    signature = "max: comparable -> comparable -> comparable"
  } --[[table: 0x40b7b340]],
  min = {
    description = "#min: comparable -> comparable -> comparable\n Find the smaller of two comparables. ",
    signature = "min: comparable -> comparable -> comparable"
  } --[[table: 0x418d3b48]],
  negate = {
    description = "#negate: number -> number\n Negate a number.",
    signature = "negate: number -> number"
  } --[[table: 0x41c5d418]],
  ["not"] = {
    description = "#not: Bool -> Bool\n Negate a boolean value.",
    signature = "not: Bool -> Bool"
  } --[[table: 0x41c5c728]],
  pi = {
    description = "#pi: Float\n An approximation of pi. ",
    signature = "pi: Float"
  } --[[table: 0x41c610b0]],
  radians = {
    description = "#radians: Float -> Float\n Convert radians to standard Elm angles (radians). ",
    signature = "radians: Float -> Float"
  } --[[table: 0x41c65bc0]],
  rem = {
    description = "#rem: Int -> Int -> Int\n Find the remainder after dividing one number by another.",
    signature = "rem: Int -> Int -> Int"
  } --[[table: 0x40b7a510]],
  round = {
    description = "#round: Float -> Int\n Round a number to the nearest integer. ",
    signature = "round: Float -> Int"
  } --[[table: 0x41c64ad8]],
  sin = {
    description = "#sin: Float -> Float\n",
    signature = "sin: Float -> Float"
  } --[[table: 0x41c61600]],
  snd = {
    description = "#snd: (a, b) -> b\n Given a 2-tuple, returns the second value. ",
    signature = "snd: (a, b) -> b"
  } --[[table: 0x41c68b20]],
  sqrt = {
    description = "#sqrt: Float -> Float\n Take the square root of a number. ",
    signature = "sqrt: Float -> Float"
  } --[[table: 0x41c5c188]],
  tan = {
    description = "#tan: Float -> Float\n",
    signature = "tan: Float -> Float"
  } --[[table: 0x41c62538]],
  toFloat = {
    description = "#toFloat: Int -> Float\n Convert an integer into a float. ",
    signature = "toFloat: Int -> Float"
  } --[[table: 0x41c65610]],
  toPolar = {
    description = "#toPolar: (Float, Float) -> (Float, Float)\n Convert Cartesian coordinates (x,y) to polar coordinates (r,θ). ",
    signature = "toPolar: (Float, Float) -> (Float, Float)"
  } --[[table: 0x41c661a8]],
  toString = {
    description = "#toString: a -> String\n Turn any kind of value into a string. When you view the resulting string\nwith Text.fromString it should look just like the value it came from.",
    signature = "toString: a -> String"
  } --[[table: 0x41c677d8]],
  truncate = {
    description = "#truncate: Float -> Int\n Truncate a number, rounding towards zero. ",
    signature = "truncate: Float -> Int"
  } --[[table: 0x41c65338]],
  turns = {
    description = "#turns: Float -> Float\n Convert turns to standard Elm angles (radians).\nOne turn is equal to 360°.",
    signature = "turns: Float -> Float"
  } --[[table: 0x41c65e98]],
  uncurry = {
    description = "#uncurry: (a -> b -> c) -> (a, b) -> c\n Change how arguments are passed to a function.\nThis combines two arguments into a single pair.",
    signature = "uncurry: (a -> b -> c) -> (a, b) -> c"
  } --[[table: 0x41c6a4e0]],
  xor = {
    description = "#xor: Bool -> Bool -> Bool\n The exclusive-or operator. True if exactly one input is True. ",
    signature = "xor: Bool -> Bool -> Bool"
  } --[[table: 0x41c5cc38]]
} --[[table: 0x418e4c58]]