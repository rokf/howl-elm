return {
  all = {
    description = "#all: (Char -> Bool) -> String -> Bool\n Determine whether all characters satisfy a predicate.",
    signature = "all: (Char -> Bool) -> String -> Bool"
  } --[[table: 0x40488588]],
  any = {
    description = "#any: (Char -> Bool) -> String -> Bool\n Determine whether any characters satisfy a predicate.",
    signature = "any: (Char -> Bool) -> String -> Bool"
  } --[[table: 0x404880c8]],
  append = {
    description = "#append: String -> String -> String\n Append two strings. You can also use the (++) operator\nto do this.",
    signature = "append: String -> String -> String"
  } --[[table: 0x4047cbe0]],
  concat = {
    description = "#concat: List String -> String\n Concatenate many strings into one.",
    signature = "concat: List String -> String"
  } --[[table: 0x4047e700]],
  cons = {
    description = "#cons: Char -> String -> String\n Add a character to the beginning of a string.",
    signature = "cons: Char -> String -> String"
  } --[[table: 0x4047d600]],
  contains = {
    description = "#contains: String -> String -> Bool\n See if the second string contains the first one.",
    signature = "contains: String -> String -> Bool"
  } --[[table: 0x40482ba8]],
  dropLeft = {
    description = "#dropLeft: Int -> String -> String\n Drop n characters from the left side of a string.",
    signature = "dropLeft: Int -> String -> String"
  } --[[table: 0x40482320]],
  dropRight = {
    description = "#dropRight: Int -> String -> String\n Drop n characters from the right side of a string.",
    signature = "dropRight: Int -> String -> String"
  } --[[table: 0x404828a8]],
  endsWith = {
    description = "#endsWith: String -> String -> Bool\n See if the second string ends with the first one.",
    signature = "endsWith: String -> String -> Bool"
  } --[[table: 0x404831b0]],
  filter = {
    description = "#filter: (Char -> Bool) -> String -> String\n Keep only the characters that satisfy the predicate.",
    signature = "filter: (Char -> Bool) -> String -> String"
  } --[[table: 0x404868f8]],
  foldl = {
    description = "#foldl: (Char -> b -> b) -> b -> String -> b\n Reduce a string from the left.",
    signature = "foldl: (Char -> b -> b) -> b -> String -> b"
  } --[[table: 0x4047e060]],
  foldr = {
    description = "#foldr: (Char -> b -> b) -> b -> String -> b\n Reduce a string from the right.",
    signature = "foldr: (Char -> b -> b) -> b -> String -> b"
  } --[[table: 0x4047e430]],
  fromChar = {
    description = "#fromChar: Char -> String\n Create a string from a given character.",
    signature = "fromChar: Char -> String"
  } --[[table: 0x4047dc98]],
  fromList = {
    description = "#fromList: List Char -> String\n Convert a list of characters into a String. Can be useful if you\nwant to create a string primarily by consing, perhaps for decoding\nsomething.",
    signature = "fromList: List Char -> String"
  } --[[table: 0x404843d0]],
  indexes = {
    description = "#indexes: String -> String -> List Int\n Get all of the indexes for a substring in another string.",
    signature = "indexes: String -> String -> List Int"
  } --[[table: 0x404834a8]],
  indices = {
    description = "#indices: String -> String -> List Int\n Alias for indexes. ",
    signature = "indices: String -> String -> List Int"
  } --[[table: 0x404837f0]],
  isEmpty = {
    description = "#isEmpty: String -> Bool\n Determine if a string is empty.",
    signature = "isEmpty: String -> Bool"
  } --[[table: 0x41433320]],
  join = {
    description = "#join: String -> List String -> String\n Put many strings together with a given separator.",
    signature = "join: String -> List String -> String"
  } --[[table: 0x4047ef08]],
  left = {
    description = "#left: Int -> String -> String\n Take n characters from the left side of a string.",
    signature = "left: Int -> String -> String"
  } --[[table: 0x40481c78]],
  length = {
    description = "#length: String -> Int\n Get the length of a string.",
    signature = "length: String -> Int"
  } --[[table: 0x4142f190]],
  lines = {
    description = "#lines: String -> List String\n Break a string into lines, splitting on newlines.",
    signature = "lines: String -> List String"
  } --[[table: 0x40481528]],
  map = {
    description = "#map: (Char -> Char) -> String -> String\n Transform every character in a string",
    signature = "map: (Char -> Char) -> String -> String"
  } --[[table: 0x40486330]],
  pad = {
    description = "#pad: Int -> Char -> String -> String\n Pad a string on both sides until it has a given length.",
    signature = "pad: Int -> Char -> String -> String"
  } --[[table: 0x40484d78]],
  padLeft = {
    description = "#padLeft: Int -> Char -> String -> String\n Pad a string on the left until it has a given length.",
    signature = "padLeft: Int -> Char -> String -> String"
  } --[[table: 0x404850c0]],
  padRight = {
    description = "#padRight: Int -> Char -> String -> String\n Pad a string on the right until it has a given length.",
    signature = "padRight: Int -> Char -> String -> String"
  } --[[table: 0x40485418]],
  ["repeat"] = {
    description = "#repeat: Int -> String -> String\n Repeat a string n times.",
    signature = "repeat: Int -> String -> String"
  } --[[table: 0x41ced608]],
  reverse = {
    description = "#reverse: String -> String\n Reverse a string.",
    signature = "reverse: String -> String"
  } --[[table: 0x4047cfc0]],
  right = {
    description = "#right: Int -> String -> String\n Take n characters from the right side of a string.",
    signature = "right: Int -> String -> String"
  } --[[table: 0x40481fc0]],
  slice = {
    description = "#slice: Int -> Int -> String -> String\n Take a substring given a start and end index. Negative indexes\nare taken starting from the end of the list.",
    signature = "slice: Int -> Int -> String -> String"
  } --[[table: 0x404818f0]],
  split = {
    description = "#split: String -> String -> List String\n Split a string using a given separator.",
    signature = "split: String -> String -> List String"
  } --[[table: 0x4047ecc8]],
  startsWith = {
    description = "#startsWith: String -> String -> Bool\n See if the second string starts with the first one.",
    signature = "startsWith: String -> String -> Bool"
  } --[[table: 0x40482ea8]],
  toFloat = {
    description = "#toFloat: String ->Result String Float\n Try to convert a string into a float, failing on improperly formatted strings.",
    signature = "toFloat: String ->Result String Float"
  } --[[table: 0x40483de0]],
  toInt = {
    description = "#toInt: String ->Result String Int\n Try to convert a string into an int, failing on improperly formatted strings.",
    signature = "toInt: String ->Result String Int"
  } --[[table: 0x40483ac8]],
  toList = {
    description = "#toList: String -> List Char\n Convert a string to a list of characters.",
    signature = "toList: String -> List Char"
  } --[[table: 0x404840e8]],
  toLower = {
    description = "#toLower: String -> String\n Convert a string to all lower case. Useful for case-insensitive comparisons.",
    signature = "toLower: String -> String"
  } --[[table: 0x40484a30]],
  toUpper = {
    description = "#toUpper: String -> String\n Convert a string to all upper case. Useful for case-insensitive comparisons\nand VIRTUAL YELLING.",
    signature = "toUpper: String -> String"
  } --[[table: 0x40484718]],
  trim = {
    description = "#trim: String -> String\n Get rid of whitespace on both sides of a string.",
    signature = "trim: String -> String"
  } --[[table: 0x40485708]],
  trimLeft = {
    description = "#trimLeft: String -> String\n Get rid of whitespace on the left of a string.",
    signature = "trimLeft: String -> String"
  } --[[table: 0x40482668]],
  trimRight = {
    description = "#trimRight: String -> String\n Get rid of whitespace on the right of a string.",
    signature = "trimRight: String -> String"
  } --[[table: 0x40486008]],
  uncons = {
    description = "#uncons: String ->Maybe (Char, String)\n Split a non-empty string into its head and tail. This lets you\npattern match on strings exactly as you would with lists.",
    signature = "uncons: String ->Maybe (Char, String)"
  } --[[table: 0x4047d950]],
  words = {
    description = "#words: String -> List String\n Break a string into words, splitting on chunks of whitespace.",
    signature = "words: String -> List String"
  } --[[table: 0x41cec4e8]]
} --[[table: 0x41432ff8]]