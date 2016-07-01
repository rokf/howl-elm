return {
  Generator = {
    description = "#typeGenerator a\n A Generator is like a recipe for generating certain random values. So a\nGenerator Int describes how to generate integers and a Generator String\ndescribes how to generate strings.",
    signature = "typeGenerator a"
  } --[[table: 0x40ece890]],
  Seed = {
    description = "#typeSeed\n A Seed is the source of randomness in this whole system. Whenever\nyou want to use a generator, you need to pair it with a seed.",
    signature = "typeSeed"
  } --[[table: 0x40ed87c8]],
  andThen = {
    description = "#andThen:Generator a -> (a ->Generator b) ->Generator b\n Chain random operations, threading through the seed. In the following\nexample, we will generate a random letter by putting together uppercase and\nlowercase letters.",
    signature = "andThen:Generator a -> (a ->Generator b) ->Generator b"
  } --[[table: 0x40ed6ec0]],
  bool = {
    description = "#bool:Generator Bool\n Create a generator that produces boolean values. The following example\nsimulates a coin flip that may land heads or tails.",
    signature = "bool:Generator Bool"
  } --[[table: 0x40ecebf8]],
  float = {
    description = "#float: Float -> Float ->Generator Float\n Generate floats in a given range. The following example is a generator\nthat produces decimals between 0 and 1.",
    signature = "float: Float -> Float ->Generator Float"
  } --[[table: 0x40ecf5b8]],
  generate = {
    description = "#generate: (a -> msg) ->Generator a ->Cmd msg\n Create a command that will generate random values.",
    signature = "generate: (a -> msg) ->Generator a ->Cmd msg"
  } --[[table: 0x40ed7550]],
  initialSeed = {
    description = "#initialSeed: Int ->Seed\n Create a “seed” of randomness which makes it possible to\ngenerate random values. If you use the same seed many times, it will result\nin the same thing every time! A good way to get an unexpected seed is to use\nthe current time.",
    signature = "initialSeed: Int ->Seed"
  } --[[table: 0x40ed8b40]],
  int = {
    description = "#int: Int -> Int ->Generator Int\n Generate 32-bit integers in a given range.",
    signature = "int: Int -> Int ->Generator Int"
  } --[[table: 0x40eceeb0]],
  list = {
    description = "#list: Int ->Generator a ->Generator (List a)\n Create a list of random values.",
    signature = "list: Int ->Generator a ->Generator (List a)"
  } --[[table: 0x40ed2108]],
  map = {
    description = "#map: (a -> b) ->Generator a ->Generator b\n Transform the values produced by a generator. The following examples show\nhow to generate booleans and letters based on a basic integer generator.",
    signature = "map: (a -> b) ->Generator a ->Generator b"
  } --[[table: 0x40ed33b0]],
  map2 = {
    description = "#map2:  (a -> b -> c)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n Combine two generators.",
    signature = "map2:  (a -> b -> c)\n    ->Generator a\n    ->Generator b\n    ->Generator c"
  } --[[table: 0x40ed4758]],
  map3 = {
    description = "#map3:  (a -> b -> c -> d)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n Combine three generators. This could be used to produce random colors.",
    signature = "map3:  (a -> b -> c -> d)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d"
  } --[[table: 0x40ed49c8]],
  map4 = {
    description = "#map4:  (a -> b -> c -> d -> e)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e\n Combine four generators.",
    signature = "map4:  (a -> b -> c -> d -> e)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e"
  } --[[table: 0x40ed5cc8]],
  map5 = {
    description = "#map5:  (a -> b -> c -> d -> e -> f)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e\n    ->Generator f\n Combine five generators.",
    signature = "map5:  (a -> b -> c -> d -> e -> f)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e\n    ->Generator f"
  } --[[table: 0x40ed6d28]],
  maxInt = {
    description = "#maxInt: Int\n The maximum value for randomly generated 32-bit ints: 2147483647 ",
    signature = "maxInt: Int"
  } --[[table: 0x40eda610]],
  minInt = {
    description = "#minInt: Int\n The minimum value for randomly generated 32-bit ints: -2147483648 ",
    signature = "minInt: Int"
  } --[[table: 0x40edabc8]],
  pair = {
    description = "#pair:Generator a ->Generator b ->Generator (a, b)\n Create a pair of random values. A common use of this might be to generate\na point in a certain 2D space. Imagine we have a collage that is 400 pixels\nwide and 200 pixels tall.",
    signature = "pair:Generator a ->Generator b ->Generator (a, b)"
  } --[[table: 0x40ed08f8]],
  step = {
    description = "#step:Generator a ->Seed-> (a, Seed)\n Generate a random value as specified by a given Generator.",
    signature = "step:Generator a ->Seed-> (a, Seed)"
  } --[[table: 0x40ed85a0]]
} --[[table: 0x40ece058]]