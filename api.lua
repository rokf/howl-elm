return {
  Array = {
    Array = {
      description = "#typeArray a\n Representation of fast immutable arrays. You can create arrays of integers\n(Array Int) or strings (Array String) or any other type of value you can\ndream up.",
      signature = "typeArray a"
    } --[[table: 0x4191ef28]],
    append = {
      description = "#append:Array a ->Array a ->Array a\n Append two arrays to a new one.",
      signature = "append:Array a ->Array a ->Array a"
    } --[[table: 0x4191ef88]],
    empty = {
      description = "#empty:Array a\n Return an empty array.",
      signature = "empty:Array a"
    } --[[table: 0x416c2570]],
    filter = {
      description = "#filter: (a -> Bool) ->Array a ->Array a\n Keep only elements that satisfy the predicate:",
      signature = "filter: (a -> Bool) ->Array a ->Array a"
    } --[[table: 0x416c25d0]],
    foldl = {
      description = "#foldl: (a -> b -> b) -> b ->Array a -> b\n Reduce an array from the left. Read foldl as “fold from the left”.",
      signature = "foldl: (a -> b -> b) -> b ->Array a -> b"
    } --[[table: 0x414c16c0]],
    foldr = {
      description = "#foldr: (a -> b -> b) -> b ->Array a -> b\n Reduce an array from the right. Read foldr as “fold from the right”.",
      signature = "foldr: (a -> b -> b) -> b ->Array a -> b"
    } --[[table: 0x414c1720]],
    fromList = {
      description = "#fromList: List a ->Array a\n Create an array from a list.",
      signature = "fromList: List a ->Array a"
    } --[[table: 0x414c1780]],
    get = {
      description = "#get: Int ->Array a ->Maybe a\n Return Just the element at the index or Nothing if the index is out of range.",
      signature = "get: Int ->Array a ->Maybe a"
    } --[[table: 0x414c17e0]],
    indexedMap = {
      description = "#indexedMap: (Int -> a -> b) ->Array a ->Array b\n Apply a function on every element with its index as first argument.",
      signature = "indexedMap: (Int -> a -> b) ->Array a ->Array b"
    } --[[table: 0x414c1808]],
    initialize = {
      description = "#initialize: Int -> (Int -> a) ->Array a\n Initialize an array. initialize n f creates an array of length n with\nthe element at index i initialized to the result of (f i).",
      signature = "initialize: Int -> (Int -> a) ->Array a"
    } --[[table: 0x40d26f78]],
    isEmpty = {
      description = "#isEmpty:Array a -> Bool\n Determine if an array is empty.",
      signature = "isEmpty:Array a -> Bool"
    } --[[table: 0x40d26fd8]],
    length = {
      description = "#length:Array a -> Int\n Return the length of an array.",
      signature = "length:Array a -> Int"
    } --[[table: 0x40d27038]],
    map = {
      description = "#map: (a -> b) ->Array a ->Array b\n Apply a function on every element in an array.",
      signature = "map: (a -> b) ->Array a ->Array b"
    } --[[table: 0x40d27098]],
    push = {
      description = "#push: a ->Array a ->Array a\n Push an element to the end of an array.",
      signature = "push: a ->Array a ->Array a"
    } --[[table: 0x40d270f8]],
    ["repeat"] = {
      description = "#repeat: Int -> a ->Array a\n Creates an array with a given length, filled with a default element.",
      signature = "repeat: Int -> a ->Array a"
    } --[[table: 0x40d27158]],
    set = {
      description = "#set: Int -> a ->Array a ->Array a\n Set the element at a particular index. Returns an updated array.\nIf the index is out of range, the array is unaltered.",
      signature = "set: Int -> a ->Array a ->Array a"
    } --[[table: 0x40d271b8]],
    slice = {
      description = "#slice: Int -> Int ->Array a ->Array a\n Get a sub-section of an array: (slice start end array). The start is a\nzero-based index where we will start our slice. The end is a zero-based index\nthat indicates the end of the slice. The slice extracts up to but not including\nend.",
      signature = "slice: Int -> Int ->Array a ->Array a"
    } --[[table: 0x40d27218]],
    toIndexedList = {
      description = "#toIndexedList:Array a -> List (Int, a)\n Create an indexed list from an array. Each element of the array will be\npaired with its index.",
      signature = "toIndexedList:Array a -> List (Int, a)"
    } --[[table: 0x40d27278]],
    toList = {
      description = "#toList:Array a -> List a\n Create a list of elements from an array.",
      signature = "toList:Array a -> List a"
    } --[[table: 0x40d272d8]]
  } --[[table: 0x4191ef00]],
  Bitwise = {
    ["and"] = {
      description = "#and: Int -> Int -> Int\n Bitwise AND",
      signature = "and: Int -> Int -> Int"
    } --[[table: 0x414d3970]],
    complement = {
      description = "#complement: Int -> Int\n Flip each bit individually, often called bitwise NOT",
      signature = "complement: Int -> Int"
    } --[[table: 0x414d3998]],
    ["or"] = {
      description = "#or: Int -> Int -> Int\n Bitwise OR",
      signature = "or: Int -> Int -> Int"
    } --[[table: 0x414d39f8]],
    shiftLeft = {
      description = "#shiftLeft: Int -> Int -> Int\n Shift bits to the left by a given offset, filling new bits with zeros.\nThis can be used to multiply numbers by powers of two.",
      signature = "shiftLeft: Int -> Int -> Int"
    } --[[table: 0x414d3a58]],
    shiftRight = {
      description = "#shiftRight: Int -> Int -> Int\n Shift bits to the right by a given offset, filling new bits with\nwhatever is the topmost bit. This can be used to divide numbers by powers of two.",
      signature = "shiftRight: Int -> Int -> Int"
    } --[[table: 0x414d3ab8]],
    shiftRightLogical = {
      description = "#shiftRightLogical: Int -> Int -> Int\n Shift bits to the right by a given offset, filling new bits with\nzeros.",
      signature = "shiftRightLogical: Int -> Int -> Int"
    } --[[table: 0x414d3b18]],
    xor = {
      description = "#xor: Int -> Int -> Int\n Bitwise XOR",
      signature = "xor: Int -> Int -> Int"
    } --[[table: 0x414d3b78]]
  } --[[table: 0x414d3880]],
  Char = {
    KeyCode = {
      description = "#typealiasKeyCode=\n    Int\n Keyboard keys can be represented as integers. These are called key codes.\nYou can use toCode and fromCode to convert between\nkey codes and characters.",
      signature = "typealiasKeyCode=\n    Int"
    } --[[table: 0x416b1a30]],
    fromCode = {
      description = "#fromCode:KeyCode-> Char\n Convert from key code. ",
      signature = "fromCode:KeyCode-> Char"
    } --[[table: 0x416b1a90]],
    isDigit = {
      description = "#isDigit: Char -> Bool\n True for ASCII digits [0-9]. ",
      signature = "isDigit: Char -> Bool"
    } --[[table: 0x416b1af0]],
    isHexDigit = {
      description = "#isHexDigit: Char -> Bool\n True for ASCII hexadecimal digits [0-9a-fA-F]. ",
      signature = "isHexDigit: Char -> Bool"
    } --[[table: 0x416b1b50]],
    isLower = {
      description = "#isLower: Char -> Bool\n True for lower case ASCII letters. ",
      signature = "isLower: Char -> Bool"
    } --[[table: 0x416b1bb0]],
    isOctDigit = {
      description = "#isOctDigit: Char -> Bool\n True for ASCII octal digits [0-7]. ",
      signature = "isOctDigit: Char -> Bool"
    } --[[table: 0x416c86c8]],
    isUpper = {
      description = "#isUpper: Char -> Bool\n True for upper case ASCII letters. ",
      signature = "isUpper: Char -> Bool"
    } --[[table: 0x416c8728]],
    toCode = {
      description = "#toCode: Char ->KeyCode\n Convert to key code.",
      signature = "toCode: Char ->KeyCode"
    } --[[table: 0x416c8788]],
    toLocaleLower = {
      description = "#toLocaleLower: Char -> Char\n Convert to lower case, according to any locale-specific case mappings. ",
      signature = "toLocaleLower: Char -> Char"
    } --[[table: 0x40d1acf8]],
    toLocaleUpper = {
      description = "#toLocaleUpper: Char -> Char\n Convert to upper case, according to any locale-specific case mappings. ",
      signature = "toLocaleUpper: Char -> Char"
    } --[[table: 0x40d1ad58]],
    toLower = {
      description = "#toLower: Char -> Char\n Convert to lower case. ",
      signature = "toLower: Char -> Char"
    } --[[table: 0x414d7378]],
    toUpper = {
      description = "#toUpper: Char -> Char\n Convert to upper case. ",
      signature = "toUpper: Char -> Char"
    } --[[table: 0x414d73d8]]
  } --[[table: 0x416b1880]],
  Color = {
    Color = {
      description = "#typeColor\n Representation of colors.",
      signature = "typeColor"
    } --[[table: 0x40cf1a18]],
    Gradient = {
      description = "#typeGradient\n Abstract representation of a color gradient.",
      signature = "typeGradient"
    } --[[table: 0x40cf1a78]],
    black = {
      description = "#black:Color\n",
      signature = "black:Color"
    } --[[table: 0x40cf1ad8]],
    blue = {
      description = "#blue:Color\n",
      signature = "blue:Color"
    } --[[table: 0x40cf1b38]],
    brown = {
      description = "#brown:Color\n",
      signature = "brown:Color"
    } --[[table: 0x40cf1b98]],
    charcoal = {
      description = "#charcoal:Color\n",
      signature = "charcoal:Color"
    } --[[table: 0x40cf1bf8]],
    complement = {
      description = "#complement:Color->Color\n Produce a “complementary color”. The two colors will\naccent each other. This is the same as rotating the hue by 180°.",
      signature = "complement:Color->Color"
    } --[[table: 0x40cf1c58]],
    darkBlue = {
      description = "#darkBlue:Color\n",
      signature = "darkBlue:Color"
    } --[[table: 0x40cf1cb8]],
    darkBrown = {
      description = "#darkBrown:Color\n",
      signature = "darkBrown:Color"
    } --[[table: 0x40cf1d18]],
    darkCharcoal = {
      description = "#darkCharcoal:Color\n",
      signature = "darkCharcoal:Color"
    } --[[table: 0x40cf1d78]],
    darkGray = {
      description = "#darkGray:Color\n",
      signature = "darkGray:Color"
    } --[[table: 0x40cf1da0]],
    darkGreen = {
      description = "#darkGreen:Color\n",
      signature = "darkGreen:Color"
    } --[[table: 0x414c5680]],
    darkGrey = {
      description = "#darkGrey:Color\n",
      signature = "darkGrey:Color"
    } --[[table: 0x414c56e0]],
    darkOrange = {
      description = "#darkOrange:Color\n",
      signature = "darkOrange:Color"
    } --[[table: 0x414c5740]],
    darkPurple = {
      description = "#darkPurple:Color\n",
      signature = "darkPurple:Color"
    } --[[table: 0x414c57a0]],
    darkRed = {
      description = "#darkRed:Color\n",
      signature = "darkRed:Color"
    } --[[table: 0x414c5800]],
    darkYellow = {
      description = "#darkYellow:Color\n",
      signature = "darkYellow:Color"
    } --[[table: 0x414c5860]],
    gray = {
      description = "#gray:Color\n",
      signature = "gray:Color"
    } --[[table: 0x414c58c0]],
    grayscale = {
      description = "#grayscale: Float ->Color\n Produce a gray based on the input. 0 is white, 1 is black.",
      signature = "grayscale: Float ->Color"
    } --[[table: 0x414c5920]],
    green = {
      description = "#green:Color\n",
      signature = "green:Color"
    } --[[table: 0x414c5980]],
    grey = {
      description = "#grey:Color\n",
      signature = "grey:Color"
    } --[[table: 0x414c59e0]],
    greyscale = {
      description = "#greyscale: Float ->Color\n Produce a gray based on the input. 0 is white, 1 is black.",
      signature = "greyscale: Float ->Color"
    } --[[table: 0x414c5a40]],
    hsl = {
      description = "#hsl: Float -> Float -> Float ->Color\n Create HSL colors. This gives\nyou access to colors more like a color wheel, where all hues are arranged in a\ncircle that you specify with standard Elm angles (radians).",
      signature = "hsl: Float -> Float -> Float ->Color"
    } --[[table: 0x414c5aa0]],
    hsla = {
      description = "#hsla: Float -> Float -> Float -> Float ->Color\n Create HSL colors\nwith an alpha component for transparency.",
      signature = "hsla: Float -> Float -> Float -> Float ->Color"
    } --[[table: 0x414c5b00]],
    lightBlue = {
      description = "#lightBlue:Color\n",
      signature = "lightBlue:Color"
    } --[[table: 0x414c5b60]],
    lightBrown = {
      description = "#lightBrown:Color\n",
      signature = "lightBrown:Color"
    } --[[table: 0x414c5bc0]],
    lightCharcoal = {
      description = "#lightCharcoal:Color\n",
      signature = "lightCharcoal:Color"
    } --[[table: 0x414c5c20]],
    lightGray = {
      description = "#lightGray:Color\n",
      signature = "lightGray:Color"
    } --[[table: 0x414c5c80]],
    lightGreen = {
      description = "#lightGreen:Color\n",
      signature = "lightGreen:Color"
    } --[[table: 0x414c5ce0]],
    lightGrey = {
      description = "#lightGrey:Color\n",
      signature = "lightGrey:Color"
    } --[[table: 0x414c5d40]],
    lightOrange = {
      description = "#lightOrange:Color\n",
      signature = "lightOrange:Color"
    } --[[table: 0x40d20600]],
    lightPurple = {
      description = "#lightPurple:Color\n",
      signature = "lightPurple:Color"
    } --[[table: 0x40d20660]],
    lightRed = {
      description = "#lightRed:Color\n",
      signature = "lightRed:Color"
    } --[[table: 0x40d206c0]],
    lightYellow = {
      description = "#lightYellow:Color\n",
      signature = "lightYellow:Color"
    } --[[table: 0x40d20720]],
    linear = {
      description = "#linear:  (Float, Float)\n    -> (Float, Float)\n    -> List (Float, Color)\n    ->Gradient\n Create a linear gradient. Takes a start and end point and then a series of\n“color stops” that indicate how to interpolate between the start and\nend points. See this example for a\nmore visual explanation.",
      signature = "linear:  (Float, Float)\n    -> (Float, Float)\n    -> List (Float, Color)\n    ->Gradient"
    } --[[table: 0x40d20780]],
    orange = {
      description = "#orange:Color\n",
      signature = "orange:Color"
    } --[[table: 0x40d207e0]],
    purple = {
      description = "#purple:Color\n",
      signature = "purple:Color"
    } --[[table: 0x40d20840]],
    radial = {
      description = "#radial:  (Float, Float)\n    -> Float\n    -> (Float, Float)\n    -> Float\n    -> List (Float, Color)\n    ->Gradient\n Create a radial gradient. First takes a start point and inner radius.  Then\ntakes an end point and outer radius. It then takes a series of “color\nstops” that indicate how to interpolate between the inner and outer\ncircles. See this example for a\nmore visual explanation.",
      signature = "radial:  (Float, Float)\n    -> Float\n    -> (Float, Float)\n    -> Float\n    -> List (Float, Color)\n    ->Gradient"
    } --[[table: 0x40d208a0]],
    red = {
      description = "#red:Color\n",
      signature = "red:Color"
    } --[[table: 0x40d20900]],
    rgb = {
      description = "#rgb: Int -> Int -> Int ->Color\n Create RGB colors from numbers between 0 and 255 inclusive. ",
      signature = "rgb: Int -> Int -> Int ->Color"
    } --[[table: 0x40d20960]],
    rgba = {
      description = "#rgba: Int -> Int -> Int -> Float ->Color\n Create RGB colors with an alpha component for transparency.\nThe alpha component is specified with numbers between 0 and 1. ",
      signature = "rgba: Int -> Int -> Int -> Float ->Color"
    } --[[table: 0x40d209c0]],
    toHsl = {
      description = "#toHsl:Color-> { hue : Float, saturation : Float, lightness : Float, alpha : Float }\n Extract the components of a color in the HSL format.",
      signature = "toHsl:Color-> { hue : Float, saturation : Float, lightness : Float, alpha : Float }"
    } --[[table: 0x40d20a20]],
    toRgb = {
      description = "#toRgb:Color-> { red : Int, green : Int, blue : Int, alpha : Float }\n Extract the components of a color in the RGB format.",
      signature = "toRgb:Color-> { red : Int, green : Int, blue : Int, alpha : Float }"
    } --[[table: 0x40d20a80]],
    white = {
      description = "#white:Color\n",
      signature = "white:Color"
    } --[[table: 0x40d20ae0]],
    yellow = {
      description = "#yellow:Color\n",
      signature = "yellow:Color"
    } --[[table: 0x40d20b40]]
  } --[[table: 0x40cf19f0]],
  Date = {
    Date = {
      description = "#typeDate\n Representation of a date.",
      signature = "typeDate"
    } --[[table: 0x4005ff68]],
    Day = {
      description = "#typeDay\n    = Mon\n    | Tue\n    | Wed\n    | Thu\n    | Fri\n    | Sat\n    | Sun\n Represents the days of the week.",
      signature = "typeDay\n    = Mon\n    | Tue\n    | Wed\n    | Thu\n    | Fri\n    | Sat\n    | Sun"
    } --[[table: 0x4005ffc8]],
    Month = {
      description = "#typeMonth\n    = Jan\n    | Feb\n    | Mar\n    | Apr\n    | May\n    | Jun\n    | Jul\n    | Aug\n    | Sep\n    | Oct\n    | Nov\n    | Dec\n Represents the month of the year.",
      signature = "typeMonth\n    = Jan\n    | Feb\n    | Mar\n    | Apr\n    | May\n    | Jun\n    | Jul\n    | Aug\n    | Sep\n    | Oct\n    | Nov\n    | Dec"
    } --[[table: 0x4005fea0]],
    day = {
      description = "#day:Date-> Int\n Extract the day of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 23.",
      signature = "day:Date-> Int"
    } --[[table: 0x40d202d0]],
    dayOfWeek = {
      description = "#dayOfWeek:Date->Day\n Extract the day of the week for a given date. Given the date 23 June\n1990 at 11:45AM this returns the day Sat as defined below.",
      signature = "dayOfWeek:Date->Day"
    } --[[table: 0x40d20330]],
    fromString = {
      description = "#fromString: String ->Result String Date\n Attempt to read a date from a string.",
      signature = "fromString: String ->Result String Date"
    } --[[table: 0x40d20390]],
    fromTime = {
      description = "#fromTime:Time->Date\n Convert a time in milliseconds into a Date.",
      signature = "fromTime:Time->Date"
    } --[[table: 0x40ccce50]],
    hour = {
      description = "#hour:Date-> Int\n Extract the hour of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 11.",
      signature = "hour:Date-> Int"
    } --[[table: 0x40ccceb0]],
    millisecond = {
      description = "#millisecond:Date-> Int\n Extract the millisecond of a given date. Given the date 23 June 1990 at 11:45:30.123AM\nthis returns the integer 123.",
      signature = "millisecond:Date-> Int"
    } --[[table: 0x416ae078]],
    minute = {
      description = "#minute:Date-> Int\n Extract the minute of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 45.",
      signature = "minute:Date-> Int"
    } --[[table: 0x416ae0d8]],
    month = {
      description = "#month:Date->Month\n Extract the month of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the month Jun as defined below.",
      signature = "month:Date->Month"
    } --[[table: 0x416ae138]],
    now = {
      description = "#now:Task x Date\n Get the Date at the moment when this task is run.",
      signature = "now:Task x Date"
    } --[[table: 0x416ae198]],
    second = {
      description = "#second:Date-> Int\n Extract the second of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 0.",
      signature = "second:Date-> Int"
    } --[[table: 0x416ae1f8]],
    toTime = {
      description = "#toTime:Date->Time\n Convert a Date to a time in milliseconds.",
      signature = "toTime:Date->Time"
    } --[[table: 0x416ae258]],
    year = {
      description = "#year:Date-> Int\n Extract the year of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 1990.",
      signature = "year:Date-> Int"
    } --[[table: 0x416ae2b8]]
  } --[[table: 0x4005ff40]],
  Debug = {
    crash = {
      description = "#crash: String -> a\n Crash the program with an error message. This is an uncatchable error,\nintended for code that is soon-to-be-implemented. For example, if you are\nworking with a large ADT and have partially completed a case expression, it may\nmake sense to do this:",
      signature = "crash: String -> a"
    } --[[table: 0x414ca960]],
    log = {
      description = "#log: String -> a -> a\n Log a tagged value on the developer console, and then return the value.",
      signature = "log: String -> a -> a"
    } --[[table: 0x414ca9c0]]
  } --[[table: 0x414ca900]],
  Dict = {
    Dict = {
      description = "#typeDict k v\n A dictionary of keys and values. So a (Dict String User) is a dictionary\nthat lets you look up a String (such as user names) and find the associated\nUser.",
      signature = "typeDict k v"
    } --[[table: 0x416c59e0]],
    diff = {
      description = "#diff:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v\n Keep a key-value pair when its key does not appear in the second dictionary.",
      signature = "diff:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v"
    } --[[table: 0x416c5a40]],
    empty = {
      description = "#empty:Dict k v\n Create an empty dictionary. ",
      signature = "empty:Dict k v"
    } --[[table: 0x41929b58]],
    filter = {
      description = "#filter:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    ->Dict comparable v\n Keep a key-value pair when it satisfies a predicate. ",
      signature = "filter:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    ->Dict comparable v"
    } --[[table: 0x41929bb8]],
    foldl = {
      description = "#foldl:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b\n Fold over the key-value pairs in a dictionary, in order from lowest\nkey to highest key.",
      signature = "foldl:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b"
    } --[[table: 0x41929c18]],
    foldr = {
      description = "#foldr:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b\n Fold over the key-value pairs in a dictionary, in order from highest\nkey to lowest key.",
      signature = "foldr:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b"
    } --[[table: 0x41929c78]],
    fromList = {
      description = "#fromList: List (comparable, v) ->Dict comparable v\n Convert an association list into a dictionary. ",
      signature = "fromList: List (comparable, v) ->Dict comparable v"
    } --[[table: 0x41929cd8]],
    get = {
      description = "#get: comparable ->Dict comparable v ->Maybe v\n Get the value associated with a key. If the key is not found, return\nNothing. This is useful when you are not sure if a key will be in the\ndictionary.",
      signature = "get: comparable ->Dict comparable v ->Maybe v"
    } --[[table: 0x41929d38]],
    insert = {
      description = "#insert:  comparable\n    -> v\n    ->Dict comparable v\n    ->Dict comparable v\n Insert a key-value pair into a dictionary. Replaces value when there is\na collision. ",
      signature = "insert:  comparable\n    -> v\n    ->Dict comparable v\n    ->Dict comparable v"
    } --[[table: 0x419296a0]],
    intersect = {
      description = "#intersect:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v\n Keep a key-value pair when its key appears in the second dictionary.\nPreference is given to values in the first dictionary.",
      signature = "intersect:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v"
    } --[[table: 0x41929700]],
    isEmpty = {
      description = "#isEmpty:Dict k v -> Bool\n Determine if a dictionary is empty.",
      signature = "isEmpty:Dict k v -> Bool"
    } --[[table: 0x41929760]],
    keys = {
      description = "#keys:Dict comparable v -> List comparable\n Get all of the keys in a dictionary, sorted from lowest to highest.",
      signature = "keys:Dict comparable v -> List comparable"
    } --[[table: 0x419297c0]],
    map = {
      description = "#map:  (comparable -> a -> b)\n    ->Dict comparable a\n    ->Dict comparable b\n Apply a function to all values in a dictionary.",
      signature = "map:  (comparable -> a -> b)\n    ->Dict comparable a\n    ->Dict comparable b"
    } --[[table: 0x41929820]],
    member = {
      description = "#member: comparable ->Dict comparable v -> Bool\n Determine if a key is in a dictionary. ",
      signature = "member: comparable ->Dict comparable v -> Bool"
    } --[[table: 0x41929848]],
    merge = {
      description = "#merge:  (comparable -> a -> result -> result)\n    -> (comparable -> a -> b -> result -> result)\n    -> (comparable -> b -> result -> result)\n    ->Dict comparable a\n    ->Dict comparable b\n    -> result\n    -> result\n The most general way of combining two dictionaries. You provide three\naccumulators for when a given key appears:",
      signature = "merge:  (comparable -> a -> result -> result)\n    -> (comparable -> a -> b -> result -> result)\n    -> (comparable -> b -> result -> result)\n    ->Dict comparable a\n    ->Dict comparable b\n    -> result\n    -> result"
    } --[[table: 0x41d448a0]],
    partition = {
      description = "#partition:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    -> (Dict comparable v, Dict comparable v)\n Partition a dictionary according to a predicate. The first dictionary\ncontains all key-value pairs which satisfy the predicate, and the second\ncontains the rest.",
      signature = "partition:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    -> (Dict comparable v, Dict comparable v)"
    } --[[table: 0x41d44900]],
    remove = {
      description = "#remove: comparable ->Dict comparable v ->Dict comparable v\n Remove a key-value pair from a dictionary. If the key is not found,\nno changes are made. ",
      signature = "remove: comparable ->Dict comparable v ->Dict comparable v"
    } --[[table: 0x41d44960]],
    singleton = {
      description = "#singleton: comparable -> v ->Dict comparable v\n Create a dictionary with one key-value pair. ",
      signature = "singleton: comparable -> v ->Dict comparable v"
    } --[[table: 0x41d449c0]],
    size = {
      description = "#size:Dict k v -> Int\n Determine the number of key-value pairs in the dictionary. ",
      signature = "size:Dict k v -> Int"
    } --[[table: 0x41d44a20]],
    toList = {
      description = "#toList:Dict comparable v -> List (comparable, v)\n Convert a dictionary into an association list of key-value pairs, sorted by keys. ",
      signature = "toList:Dict comparable v -> List (comparable, v)"
    } --[[table: 0x41d44a80]],
    union = {
      description = "#union:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v\n Combine two dictionaries. If there is a collision, preference is given\nto the first dictionary.",
      signature = "union:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v"
    } --[[table: 0x41d44ae0]],
    update = {
      description = "#update:  comparable\n    -> (Maybe v ->Maybe v)\n    ->Dict comparable v\n    ->Dict comparable v\n Update the value of a dictionary for a specific key with a given function. ",
      signature = "update:  comparable\n    -> (Maybe v ->Maybe v)\n    ->Dict comparable v\n    ->Dict comparable v"
    } --[[table: 0x41d44b40]],
    values = {
      description = "#values:Dict comparable v -> List v\n Get all of the values in a dictionary, in the order of their keys.",
      signature = "values:Dict comparable v -> List v"
    } --[[table: 0x41d44ba0]]
  } --[[table: 0x416c59b8]],
  Json = {
    Decode = {
      Decoder = {
        description = "#typeDecoder a\n Represents a way of decoding JSON values. If you have a (Decoder (List String))\nit will attempt to take some JSON value and turn it into a list of strings.\nThese decoders are easy to put together so you can create more and more complex\ndecoders.",
        signature = "typeDecoder a"
      } --[[table: 0x40cd8318]],
      Value = {
        description = "#typealiasValue=Value\n Represents a JavaScript value.",
        signature = "typealiasValue=Value"
      } --[[table: 0x40cd8378]],
      andThen = {
        description = "#andThen:Decoder a -> (a ->Decoder b) ->Decoder b\n Helpful when a field tells you about the overall structure of the JSON\nyou are dealing with. For example, imagine we are getting JSON representing\ndifferent shapes. Data like this:",
        signature = "andThen:Decoder a -> (a ->Decoder b) ->Decoder b"
      } --[[table: 0x40cd83d8]],
      array = {
        description = "#array:Decoder a ->Decoder (Array a)\n Extract an Array from a JS array.",
        signature = "array:Decoder a ->Decoder (Array a)"
      } --[[table: 0x40cd8438]],
      at = {
        description = "#at: List String ->Decoder a ->Decoder a\n Access a nested field, making it easy to dive into big structures. This is\nreally a helper function so you do not need to write (:=) so many times.",
        signature = "at: List String ->Decoder a ->Decoder a"
      } --[[table: 0x40cd8498]],
      bool = {
        description = "#bool:Decoder Bool\n Extract a boolean.",
        signature = "bool:Decoder Bool"
      } --[[table: 0x40cd84f8]],
      customDecoder = {
        description = "#customDecoder:Decoder a -> (a ->Result String b) ->Decoder b\n Create a custom decoder that may do some fancy computation. See the value\ndocumentation for an example usage.",
        signature = "customDecoder:Decoder a -> (a ->Result String b) ->Decoder b"
      } --[[table: 0x40cd8558]],
      decodeString = {
        description = "#decodeString:Decoder a -> String ->Result String a\n Using a certain decoder, attempt to parse a JSON string. If the decoder\nfails, you will get a string message telling you why.",
        signature = "decodeString:Decoder a -> String ->Result String a"
      } --[[table: 0x40cd85b8]],
      decodeValue = {
        description = "#decodeValue:Decoder a ->Value->Result String a\n Using a certain decoder, attempt to parse a raw Json.Value. You can pass\na Json.Value into Elm through a port, so this can let you handle data with\nextra weird shapes or stuff that currently is not allowed through ports\nautomatically.",
        signature = "decodeValue:Decoder a ->Value->Result String a"
      } --[[table: 0x40cd8618]],
      dict = {
        description = "#dict:Decoder a ->Decoder (Dict String a)\n Turn any object into a dictionary of key-value pairs, including inherited enumerable properties. Fails if any value can't be\ndecoded with the given decoder.",
        signature = "dict:Decoder a ->Decoder (Dict String a)"
      } --[[table: 0x40cd8678]],
      fail = {
        description = "#fail: String ->Decoder a\n A decoder that always fails. Useful when paired with andThen or oneOf\nto improve error messages when things go wrong. For example, the following\ndecoder is able to provide a much more specific error message when fail is\nthe last option.",
        signature = "fail: String ->Decoder a"
      } --[[table: 0x40cd86d8]],
      float = {
        description = "#float:Decoder Float\n Extract a float.",
        signature = "float:Decoder Float"
      } --[[table: 0x40cd8738]],
      int = {
        description = "#int:Decoder Int\n Extract an integer.",
        signature = "int:Decoder Int"
      } --[[table: 0x40cd8798]],
      keyValuePairs = {
        description = "#keyValuePairs:Decoder a ->Decoder (List (String, a))\n Turn any object into a list of key-value pairs, including inherited enumerable properties. Fails if any value can't be\ndecoded with the given decoder.",
        signature = "keyValuePairs:Decoder a ->Decoder (List (String, a))"
      } --[[table: 0x40cd87f8]],
      list = {
        description = "#list:Decoder a ->Decoder (List a)\n Extract a List from a JS array.",
        signature = "list:Decoder a ->Decoder (List a)"
      } --[[table: 0x40cd8858]],
      map = {
        description = "#map: (a -> b) ->Decoder a ->Decoder b\n Transform the value returned by a decoder. Most useful when paired with\nthe oneOf function.",
        signature = "map: (a -> b) ->Decoder a ->Decoder b"
      } --[[table: 0x40cd88b8]],
      maybe = {
        description = "#maybe:Decoder a ->Decoder (Maybe a)\n Extract a Maybe value, wrapping successes with Just and turning any\nfailure in Nothing. If you are expecting that a field can sometimes be null,\nit's better to check for it explicitly, as this function will swallow\nerrors from ill-formed JSON.",
        signature = "maybe:Decoder a ->Decoder (Maybe a)"
      } --[[table: 0x40cd8918]],
      null = {
        description = "#null: a ->Decoder a\n Decode null as the value given, and fail otherwise. Primarily useful for\ncreating other decoders.",
        signature = "null: a ->Decoder a"
      } --[[table: 0x40cd8978]],
      object1 = {
        description = "#object1: (a -> value) ->Decoder a ->Decoder value\n Apply a function to a decoder. You can use this function as map if you\nmust (which can be done with any objectN function actually).",
        signature = "object1: (a -> value) ->Decoder a ->Decoder value"
      } --[[table: 0x40cd89d8]],
      object2 = {
        description = "#object2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value\n Use two different decoders on a JS value. This is nice for extracting\nmultiple fields from an object.",
        signature = "object2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value"
      } --[[table: 0x40cd8a38]],
      object3 = {
        description = "#object3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value\n Use three different decoders on a JS value. This is nice for extracting\nmultiple fields from an object.",
        signature = "object3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value"
      } --[[table: 0x40cd8a98]],
      object4 = {
        description = "#object4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value\n",
        signature = "object4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value"
      } --[[table: 0x40cd8af8]],
      object5 = {
        description = "#object5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value\n",
        signature = "object5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value"
      } --[[table: 0x40cd8b58]],
      object6 = {
        description = "#object6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value\n",
        signature = "object6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value"
      } --[[table: 0x40cd8bb8]],
      object7 = {
        description = "#object7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value\n",
        signature = "object7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value"
      } --[[table: 0x40cd8c18]],
      object8 = {
        description = "#object8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value\n",
        signature = "object8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value"
      } --[[table: 0x40cd8c78]],
      oneOf = {
        description = "#oneOf: List (Decoder a) ->Decoder a\n Try out multiple different decoders. This is helpful when you are dealing\nwith something with a very strange shape and when andThen does not help\nnarrow things down so you can be more targeted.",
        signature = "oneOf: List (Decoder a) ->Decoder a"
      } --[[table: 0x40cd8cd8]],
      string = {
        description = "#string:Decoder String\n Extract a string.",
        signature = "string:Decoder String"
      } --[[table: 0x40cd8d38]],
      succeed = {
        description = "#succeed: a ->Decoder a\n A decoder that always succeeds. Useful when paired with andThen or\noneOf but everything is supposed to work out at the end. For example,\nmaybe you have an optional field that can have a default value when it is\nmissing.",
        signature = "succeed: a ->Decoder a"
      } --[[table: 0x40cd8d98]],
      tuple1 = {
        description = "#tuple1: (a -> value) ->Decoder a ->Decoder value\n Handle an array with exactly one element.",
        signature = "tuple1: (a -> value) ->Decoder a ->Decoder value"
      } --[[table: 0x40cd8df8]],
      tuple2 = {
        description = "#tuple2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value\n Handle an array with exactly two elements. Useful for points and simple\npairs.",
        signature = "tuple2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value"
      } --[[table: 0x40cd8e58]],
      tuple3 = {
        description = "#tuple3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value\n Handle an array with exactly three elements.",
        signature = "tuple3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value"
      } --[[table: 0x40cd8eb8]],
      tuple4 = {
        description = "#tuple4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value\n",
        signature = "tuple4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value"
      } --[[table: 0x40cd8f18]],
      tuple5 = {
        description = "#tuple5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value\n",
        signature = "tuple5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value"
      } --[[table: 0x40cd8f78]],
      tuple6 = {
        description = "#tuple6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value\n",
        signature = "tuple6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value"
      } --[[table: 0x40cd8fd8]],
      tuple7 = {
        description = "#tuple7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value\n",
        signature = "tuple7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value"
      } --[[table: 0x40cd9038]],
      tuple8 = {
        description = "#tuple8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value\n",
        signature = "tuple8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value"
      } --[[table: 0x40cd9098]],
      value = {
        description = "#value:DecoderValue\n Bring in an arbitrary JSON value. Useful if you need to work with crazily\nformatted data. For example, this lets you create a parser for \"variadic\" lists\nwhere the first few types are different, followed by 0 or more of the same\ntype.",
        signature = "value:DecoderValue"
      } --[[table: 0x40cd90f8]]
    } --[[table: 0x40cd7ce8]],
    Encode = {
      Value = {
        description = "#typeValue\n Represents a JavaScript value.",
        signature = "typeValue"
      } --[[table: 0x40cda410]],
      array = {
        description = "#array:ArrayValue->Value\n",
        signature = "array:ArrayValue->Value"
      } --[[table: 0x40cda470]],
      bool = {
        description = "#bool: Bool ->Value\n",
        signature = "bool: Bool ->Value"
      } --[[table: 0x40cda4d0]],
      encode = {
        description = "#encode: Int ->Value-> String\n Convert a Value into a prettified string. The first argument specifies\nthe amount of indentation in the resulting string.",
        signature = "encode: Int ->Value-> String"
      } --[[table: 0x40cda530]],
      float = {
        description = "#float: Float ->Value\n Encode a Float. Infinity and NaN are encoded as null.",
        signature = "float: Float ->Value"
      } --[[table: 0x40cda590]],
      int = {
        description = "#int: Int ->Value\n",
        signature = "int: Int ->Value"
      } --[[table: 0x40cda5f0]],
      list = {
        description = "#list: List Value->Value\n",
        signature = "list: List Value->Value"
      } --[[table: 0x40cda650]],
      null = {
        description = "#null:Value\n",
        signature = "null:Value"
      } --[[table: 0x40cda6b0]],
      object = {
        description = "#object: List (String, Value) ->Value\n",
        signature = "object: List (String, Value) ->Value"
      } --[[table: 0x40cda710]],
      string = {
        description = "#string: String ->Value\n",
        signature = "string: String ->Value"
      } --[[table: 0x40cda770]]
    } --[[table: 0x40cda3e8]]
  } --[[table: 0x41d44c00]],
  List = {
    all = {
      description = "#all: (a -> Bool) -> List a -> Bool\n Determine if all elements satisfy the predicate.",
      signature = "all: (a -> Bool) -> List a -> Bool"
    } --[[table: 0x40cdcda0]],
    any = {
      description = "#any: (a -> Bool) -> List a -> Bool\n Determine if any elements satisfy the predicate.",
      signature = "any: (a -> Bool) -> List a -> Bool"
    } --[[table: 0x40cdcdc8]],
    append = {
      description = "#append: List a -> List a -> List a\n Put two lists together.",
      signature = "append: List a -> List a -> List a"
    } --[[table: 0x40d2e040]],
    concat = {
      description = "#concat: List (List a) -> List a\n Concatenate a bunch of lists into a single list:",
      signature = "concat: List (List a) -> List a"
    } --[[table: 0x40d2e0a0]],
    concatMap = {
      description = "#concatMap: (a -> List b) -> List a -> List b\n Map a given function onto a list and flatten the resulting lists.",
      signature = "concatMap: (a -> List b) -> List a -> List b"
    } --[[table: 0x40cdc220]],
    drop = {
      description = "#drop: Int -> List a -> List a\n Drop the first n members of a list.",
      signature = "drop: Int -> List a -> List a"
    } --[[table: 0x40cdc280]],
    filter = {
      description = "#filter: (a -> Bool) -> List a -> List a\n Keep only elements that satisfy the predicate.",
      signature = "filter: (a -> Bool) -> List a -> List a"
    } --[[table: 0x40cdc2e0]],
    filterMap = {
      description = "#filterMap: (a ->Maybe b) -> List a -> List b\n Apply a function that may succeed to all values in the list, but only keep\nthe successes.",
      signature = "filterMap: (a ->Maybe b) -> List a -> List b"
    } --[[table: 0x40cdc340]],
    foldl = {
      description = "#foldl: (a -> b -> b) -> b -> List a -> b\n Reduce a list from the left.",
      signature = "foldl: (a -> b -> b) -> b -> List a -> b"
    } --[[table: 0x40cdc3a0]],
    foldr = {
      description = "#foldr: (a -> b -> b) -> b -> List a -> b\n Reduce a list from the right.",
      signature = "foldr: (a -> b -> b) -> b -> List a -> b"
    } --[[table: 0x40cdc400]],
    head = {
      description = "#head: List a ->Maybe a\n Extract the first element of a list.",
      signature = "head: List a ->Maybe a"
    } --[[table: 0x40cdc460]],
    indexedMap = {
      description = "#indexedMap: (Int -> a -> b) -> List a -> List b\n Same as map but the function is also applied to the index of each\nelement (starting at zero).",
      signature = "indexedMap: (Int -> a -> b) -> List a -> List b"
    } --[[table: 0x40cdc4c0]],
    intersperse = {
      description = "#intersperse: a -> List a -> List a\n Places the given value between all members of the given list.",
      signature = "intersperse: a -> List a -> List a"
    } --[[table: 0x40cdc520]],
    isEmpty = {
      description = "#isEmpty: List a -> Bool\n Determine if a list is empty.",
      signature = "isEmpty: List a -> Bool"
    } --[[table: 0x40cdc580]],
    length = {
      description = "#length: List a -> Int\n Determine the length of a list.",
      signature = "length: List a -> Int"
    } --[[table: 0x41d49578]],
    map = {
      description = "#map: (a -> b) -> List a -> List b\n Apply a function to every element of a list.",
      signature = "map: (a -> b) -> List a -> List b"
    } --[[table: 0x41d495d8]],
    map2 = {
      description = "#map2: (a -> b -> result) -> List a -> List b -> List result\n Combine two lists, combining them with the given function.\nIf one list is longer, the extra elements are dropped.",
      signature = "map2: (a -> b -> result) -> List a -> List b -> List result"
    } --[[table: 0x41d49638]],
    map3 = {
      description = "#map3:  (a -> b -> c -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List result\n",
      signature = "map3:  (a -> b -> c -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List result"
    } --[[table: 0x41d49698]],
    map4 = {
      description = "#map4:  (a -> b -> c -> d -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List result\n",
      signature = "map4:  (a -> b -> c -> d -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List result"
    } --[[table: 0x41d496f8]],
    map5 = {
      description = "#map5:  (a -> b -> c -> d -> e -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List e\n    -> List result\n",
      signature = "map5:  (a -> b -> c -> d -> e -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List e\n    -> List result"
    } --[[table: 0x41d49758]],
    maximum = {
      description = "#maximum: List comparable ->Maybe comparable\n Find the maximum element in a non-empty list.",
      signature = "maximum: List comparable ->Maybe comparable"
    } --[[table: 0x41d497b8]],
    member = {
      description = "#member: a -> List a -> Bool\n Figure out whether a list contains a value.",
      signature = "member: a -> List a -> Bool"
    } --[[table: 0x41d49818]],
    minimum = {
      description = "#minimum: List comparable ->Maybe comparable\n Find the minimum element in a non-empty list.",
      signature = "minimum: List comparable ->Maybe comparable"
    } --[[table: 0x41d49878]],
    partition = {
      description = "#partition: (a -> Bool) -> List a -> (List a, List a)\n Partition a list based on a predicate. The first list contains all values\nthat satisfy the predicate, and the second list contains all the value that do\nnot.",
      signature = "partition: (a -> Bool) -> List a -> (List a, List a)"
    } --[[table: 0x41d498d8]],
    product = {
      description = "#product: List number -> number\n Get the product of the list elements.",
      signature = "product: List number -> number"
    } --[[table: 0x41d49938]],
    ["repeat"] = {
      description = "#repeat: Int -> a -> List a\n Create a list with n copies of a value:",
      signature = "repeat: Int -> a -> List a"
    } --[[table: 0x41d49998]],
    reverse = {
      description = "#reverse: List a -> List a\n Reverse a list.",
      signature = "reverse: List a -> List a"
    } --[[table: 0x41d499f8]],
    scanl = {
      description = "#scanl: (a -> b -> b) -> b -> List a -> List b\n Reduce a list from the left, building up all of the intermediate results into a list.",
      signature = "scanl: (a -> b -> b) -> b -> List a -> List b"
    } --[[table: 0x41d49a58]],
    sort = {
      description = "#sort: List comparable -> List comparable\n Sort values from lowest to highest",
      signature = "sort: List comparable -> List comparable"
    } --[[table: 0x41d49ab8]],
    sortBy = {
      description = "#sortBy: (a -> comparable) -> List a -> List a\n Sort values by a derived property.",
      signature = "sortBy: (a -> comparable) -> List a -> List a"
    } --[[table: 0x41d49b18]],
    sortWith = {
      description = "#sortWith: (a -> a ->Order) -> List a -> List a\n Sort values with a custom comparison function.",
      signature = "sortWith: (a -> a ->Order) -> List a -> List a"
    } --[[table: 0x41d49b78]],
    sum = {
      description = "#sum: List number -> number\n Get the sum of the list elements.",
      signature = "sum: List number -> number"
    } --[[table: 0x41d49bd8]],
    tail = {
      description = "#tail: List a ->Maybe (List a)\n Extract the rest of the list.",
      signature = "tail: List a ->Maybe (List a)"
    } --[[table: 0x41d49c38]],
    take = {
      description = "#take: Int -> List a -> List a\n Take the first n members of a list.",
      signature = "take: Int -> List a -> List a"
    } --[[table: 0x41d49c98]],
    unzip = {
      description = "#unzip: List (a, b) -> (List a, List b)\n Decompose a list of tuples into a tuple of lists.",
      signature = "unzip: List (a, b) -> (List a, List b)"
    } --[[table: 0x41d49cf8]]
  } --[[table: 0x40cdb770]],
  Maybe = {
    Maybe = {
      description = "#typeMaybe a\n    = Just a\n    | Nothing\n Represent values that may or may not exist. It can be useful if you have a\nrecord field that is only filled in sometimes. Or if a function takes a value\nsometimes, but does not absolutely need it.",
      signature = "typeMaybe a\n    = Just a\n    | Nothing"
    } --[[table: 0x41d4ba18]],
    andThen = {
      description = "#andThen:Maybe a -> (a ->Maybe b) ->Maybe b\n Chain together many computations that may fail. It is helpful to see its\ndefinition:",
      signature = "andThen:Maybe a -> (a ->Maybe b) ->Maybe b"
    } --[[table: 0x41d4ba40]],
    map = {
      description = "#map: (a -> b) ->Maybe a ->Maybe b\n Transform a Maybe value with a given function:",
      signature = "map: (a -> b) ->Maybe a ->Maybe b"
    } --[[table: 0x41d4baa0]],
    map2 = {
      description = "#map2: (a -> b -> value) ->Maybe a ->Maybe b ->Maybe value\n Apply a function if all the arguments are Just a value.",
      signature = "map2: (a -> b -> value) ->Maybe a ->Maybe b ->Maybe value"
    } --[[table: 0x41d4bb00]],
    map3 = {
      description = "#map3:  (a -> b -> c -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe value\n",
      signature = "map3:  (a -> b -> c -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe value"
    } --[[table: 0x41d4bb60]],
    map4 = {
      description = "#map4:  (a -> b -> c -> d -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe value\n",
      signature = "map4:  (a -> b -> c -> d -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe value"
    } --[[table: 0x41d4bbc0]],
    map5 = {
      description = "#map5:  (a -> b -> c -> d -> e -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe e\n    ->Maybe value\n",
      signature = "map5:  (a -> b -> c -> d -> e -> value)\n    ->Maybe a\n    ->Maybe b\n    ->Maybe c\n    ->Maybe d\n    ->Maybe e\n    ->Maybe value"
    } --[[table: 0x41d4bc20]],
    oneOf = {
      description = "#oneOf: List (Maybe a) ->Maybe a\n Pick the first Maybe that actually has a value. Useful when you want to\ntry a couple different things, but there is no default value.",
      signature = "oneOf: List (Maybe a) ->Maybe a"
    } --[[table: 0x41d4bc80]],
    withDefault = {
      description = "#withDefault: a ->Maybe a -> a\n Provide a default value, turning an optional value into a normal\nvalue.  This comes in handy when paired with functions like\nDict.get which gives back a Maybe.",
      signature = "withDefault: a ->Maybe a -> a"
    } --[[table: 0x41d4bce0]]
  } --[[table: 0x41d4b9f0]],
  Never = {
    description = "#typeNever\n A type that is \"uninhabited\". There are no values of type Never, and its\nprimary use is demanding that certain tasks cannot possibly fail.",
    signature = "typeNever"
  } --[[table: 0x40e60350]],
  Order = {
    description = "#typeOrder\n    = LT\n    | EQ\n    | GT\n Represents the relative ordering of two things.\nThe relations are less than, equal to, and greater than.",
    signature = "typeOrder\n    = LT\n    | EQ\n    | GT"
  } --[[table: 0x40e603b0]],
  Platform = {
    Cmd = {
      Cmd = {
        description = "#typeCmd msg\n A command is a way of telling Elm, “Hey, I want you to do this thing!”\nSo if you want to send an HTTP request, you would need to command Elm to do it.\nOr if you wanted to ask for geolocation, you would need to command Elm to go\nget it.",
        signature = "typeCmd msg"
      } --[[table: 0x41d4d828]],
      batch = {
        description = "#batch: List (Cmd msg) ->Cmd msg\n",
        signature = "batch: List (Cmd msg) ->Cmd msg"
      } --[[table: 0x41d4d888]],
      map = {
        description = "#map: (a -> msg) ->Cmd a ->Cmd msg\n",
        signature = "map: (a -> msg) ->Cmd a ->Cmd msg"
      } --[[table: 0x41d4d8e8]],
      none = {
        description = "#none:Cmd msg\n",
        signature = "none:Cmd msg"
      } --[[table: 0x41d4d948]]
    } --[[table: 0x41d4d800]],
    ProcessId = {
      description = "#typeProcessId\n Head over to the documentation for the Process module for\ninformation on this. It is only defined here because it is a platform\nprimitive.",
      signature = "typeProcessId"
    } --[[table: 0x41d4cc70]],
    Program = {
      description = "#typeProgram flags\n Every Elm project will define main to be some sort of Program. A\nProgram value captures all the details needed to manage your application,\nincluding how to initialize things, how to respond to events, etc.",
      signature = "typeProgram flags"
    } --[[table: 0x41d4ccd0]],
    Router = {
      description = "#typeRouter appMsg selfMsg\n An effect manager has access to a “router” that routes messages between\nthe main app and your individual effect manager.",
      signature = "typeRouter appMsg selfMsg"
    } --[[table: 0x41d4cd30]],
    Sub = {
      Sub = {
        description = "#typeSub msg\n A subscription is a way of telling Elm, “Hey, let me know if anything\ninteresting happens over there!” So if you want listen for messages on a web\nsocket, you would tell Elm to create a subscription. If you want to get clock\nticks, you would tell Elm to subscribe to that. The cool thing here is that\nthis means Elm manages all the details of subscriptions instead of you.\nSo if a web socket goes down, you do not need to manually reconnect with an\nexponential backoff strategy, Elm does this all for you behind the scenes!",
        signature = "typeSub msg"
      } --[[table: 0x41d4e9c0]],
      batch = {
        description = "#batch: List (Sub msg) ->Sub msg\n",
        signature = "batch: List (Sub msg) ->Sub msg"
      } --[[table: 0x41d4ea20]],
      map = {
        description = "#map: (a -> msg) ->Sub a ->Sub msg\n",
        signature = "map: (a -> msg) ->Sub a ->Sub msg"
      } --[[table: 0x41d4ea80]],
      none = {
        description = "#none:Sub msg\n",
        signature = "none:Sub msg"
      } --[[table: 0x41d4eae0]]
    } --[[table: 0x41d4e930]],
    Task = {
      description = "#typeTask err ok\n Head over to the documentation for the Task module for more\ninformation on this. It is only defined here because it is a platform\nprimitive.",
      signature = "typeTask err ok"
    } --[[table: 0x41d4cd90]],
    sendToApp = {
      description = "#sendToApp:Router msg a -> msg ->Task x ()\n Send the router a message for the main loop of your app. This message will\nbe handled by the overall update function, just like events from Html.",
      signature = "sendToApp:Router msg a -> msg ->Task x ()"
    } --[[table: 0x41d4cdf0]],
    sendToSelf = {
      description = "#sendToSelf:Router a msg -> msg ->Task x ()\n Send the router a message for your effect manager. This message will\nbe routed to the onSelfMsg function, where you can update the state of your\neffect manager as necessary.",
      signature = "sendToSelf:Router a msg -> msg ->Task x ()"
    } --[[table: 0x41d4ce50]]
  } --[[table: 0x41d4cb80]],
  Process = {
    Id = {
      description = "#typealiasId=ProcessId\n A light-weight process that runs concurrently. You can use spawn to\nget a bunch of different tasks running in different processes. The Elm runtime\nwill interleave their progress. So if a task is taking too long, we will pause\nit at an andThen and switch over to other stuff.",
      signature = "typealiasId=ProcessId"
    } --[[table: 0x41d4f3f8]],
    kill = {
      description = "#kill:Id->Task x ()\n Sometimes you spawn a process, but later decide it would be a waste to\nhave it keep running and doing stuff. The kill function will force a process\nto bail on whatever task it is running. So if there is an HTTP request in\nflight, it will also abort the request.",
      signature = "kill:Id->Task x ()"
    } --[[table: 0x41d4f458]],
    sleep = {
      description = "#sleep:Time->Task x ()\n Block progress on the current process for a given amount of time. The\nJavaScript equivalent of this is setTimeout which lets you\ndelay work until later.",
      signature = "sleep:Time->Task x ()"
    } --[[table: 0x41d4f4b8]],
    spawn = {
      description = "#spawn:Task x a ->Task y Id\n Run a task in its own light-weight process. In the following example,\ntask1 and task2 will be interleaved. If task1 makes a long HTTP request\nor is just taking a long time, we can hop over to task2 and do some work\nthere.",
      signature = "spawn:Task x a ->Task y Id"
    } --[[table: 0x41d4f518]]
  } --[[table: 0x41d4f3d0]],
  Random = {
    Generator = {
      description = "#typeGenerator a\n A Generator is like a recipe for generating certain random values. So a\nGenerator Int describes how to generate integers and a Generator String\ndescribes how to generate strings.",
      signature = "typeGenerator a"
    } --[[table: 0x41d524e8]],
    Seed = {
      description = "#typeSeed\n A Seed is the source of randomness in this whole system. Whenever\nyou want to use a generator, you need to pair it with a seed.",
      signature = "typeSeed"
    } --[[table: 0x41d52548]],
    andThen = {
      description = "#andThen:Generator a -> (a ->Generator b) ->Generator b\n Chain random operations, threading through the seed. In the following\nexample, we will generate a random letter by putting together uppercase and\nlowercase letters.",
      signature = "andThen:Generator a -> (a ->Generator b) ->Generator b"
    } --[[table: 0x41d525a8]],
    bool = {
      description = "#bool:Generator Bool\n Create a generator that produces boolean values. The following example\nsimulates a coin flip that may land heads or tails.",
      signature = "bool:Generator Bool"
    } --[[table: 0x41d52608]],
    float = {
      description = "#float: Float -> Float ->Generator Float\n Generate floats in a given range. The following example is a generator\nthat produces decimals between 0 and 1.",
      signature = "float: Float -> Float ->Generator Float"
    } --[[table: 0x41d52668]],
    generate = {
      description = "#generate: (a -> msg) ->Generator a ->Cmd msg\n Create a command that will generate random values.",
      signature = "generate: (a -> msg) ->Generator a ->Cmd msg"
    } --[[table: 0x41d526c8]],
    initialSeed = {
      description = "#initialSeed: Int ->Seed\n Create a “seed” of randomness which makes it possible to\ngenerate random values. If you use the same seed many times, it will result\nin the same thing every time! A good way to get an unexpected seed is to use\nthe current time.",
      signature = "initialSeed: Int ->Seed"
    } --[[table: 0x41d52728]],
    int = {
      description = "#int: Int -> Int ->Generator Int\n Generate 32-bit integers in a given range.",
      signature = "int: Int -> Int ->Generator Int"
    } --[[table: 0x41d52788]],
    list = {
      description = "#list: Int ->Generator a ->Generator (List a)\n Create a list of random values.",
      signature = "list: Int ->Generator a ->Generator (List a)"
    } --[[table: 0x41d527e8]],
    map = {
      description = "#map: (a -> b) ->Generator a ->Generator b\n Transform the values produced by a generator. The following examples show\nhow to generate booleans and letters based on a basic integer generator.",
      signature = "map: (a -> b) ->Generator a ->Generator b"
    } --[[table: 0x41d52848]],
    map2 = {
      description = "#map2:  (a -> b -> c)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n Combine two generators.",
      signature = "map2:  (a -> b -> c)\n    ->Generator a\n    ->Generator b\n    ->Generator c"
    } --[[table: 0x41d528a8]],
    map3 = {
      description = "#map3:  (a -> b -> c -> d)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n Combine three generators. This could be used to produce random colors.",
      signature = "map3:  (a -> b -> c -> d)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d"
    } --[[table: 0x41d52908]],
    map4 = {
      description = "#map4:  (a -> b -> c -> d -> e)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e\n Combine four generators.",
      signature = "map4:  (a -> b -> c -> d -> e)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e"
    } --[[table: 0x41d52968]],
    map5 = {
      description = "#map5:  (a -> b -> c -> d -> e -> f)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e\n    ->Generator f\n Combine five generators.",
      signature = "map5:  (a -> b -> c -> d -> e -> f)\n    ->Generator a\n    ->Generator b\n    ->Generator c\n    ->Generator d\n    ->Generator e\n    ->Generator f"
    } --[[table: 0x41d529c8]],
    maxInt = {
      description = "#maxInt: Int\n The maximum value for randomly generated 32-bit ints: 2147483647 ",
      signature = "maxInt: Int"
    } --[[table: 0x41d52a28]],
    minInt = {
      description = "#minInt: Int\n The minimum value for randomly generated 32-bit ints: -2147483648 ",
      signature = "minInt: Int"
    } --[[table: 0x41d52a88]],
    pair = {
      description = "#pair:Generator a ->Generator b ->Generator (a, b)\n Create a pair of random values. A common use of this might be to generate\na point in a certain 2D space. Imagine we have a collage that is 400 pixels\nwide and 200 pixels tall.",
      signature = "pair:Generator a ->Generator b ->Generator (a, b)"
    } --[[table: 0x41d52ae8]],
    step = {
      description = "#step:Generator a ->Seed-> (a, Seed)\n Generate a random value as specified by a given Generator.",
      signature = "step:Generator a ->Seed-> (a, Seed)"
    } --[[table: 0x41d52b48]]
  } --[[table: 0x41d521b8]],
  Regex = {
    HowMany = {
      description = "#typeHowMany\n    = All\n    | AtMost Int\nHowMany is used to specify how many matches you want to make. So\nreplace All would replace every match, but replace (AtMost 2) would\nreplace at most two matches (i.e. zero, one, two, but never three or more).",
      signature = "typeHowMany\n    = All\n    | AtMost Int"
    } --[[table: 0x41d54008]],
    Match = {
      description = "#typealiasMatch=\n    { match : String\n    , submatches : List (Maybe String)\n    , index : Int\n    , number : Int\n    }\n A Match represents all of the details about a particular match in a string.\nHere are details on each field:",
      signature = "typealiasMatch=\n    { match : String\n    , submatches : List (Maybe String)\n    , index : Int\n    , number : Int\n    }"
    } --[[table: 0x41d54068]],
    Regex = {
      description = "#typeRegex\n A regular expression, describing a certain set of strings.",
      signature = "typeRegex"
    } --[[table: 0x41d540c8]],
    caseInsensitive = {
      description = "#caseInsensitive:Regex->Regex\n Make a regex case insensitive ",
      signature = "caseInsensitive:Regex->Regex"
    } --[[table: 0x41d54128]],
    contains = {
      description = "#contains:Regex-> String -> Bool\n Check to see if a Regex is contained in a string.",
      signature = "contains:Regex-> String -> Bool"
    } --[[table: 0x41d54188]],
    escape = {
      description = "#escape: String -> String\n Escape strings to be regular expressions, making all special characters\nsafe. So regex (escape \"^a+\") will match exactly \"^a+\" instead of a series\nof a’s that start at the beginning of the line.",
      signature = "escape: String -> String"
    } --[[table: 0x41d541e8]],
    find = {
      description = "#find:HowMany->Regex-> String -> List Match\n Find matches in a string:",
      signature = "find:HowMany->Regex-> String -> List Match"
    } --[[table: 0x41d54248]],
    regex = {
      description = "#regex: String ->Regex\n Create a Regex that matches patterns as specified in JavaScript.",
      signature = "regex: String ->Regex"
    } --[[table: 0x41d542a8]],
    replace = {
      description = "#replace:HowMany->Regex-> (Match-> String)\n    -> String\n    -> String\n Replace matches. The function from Match to String lets\nyou use the details of a specific match when making replacements.",
      signature = "replace:HowMany->Regex-> (Match-> String)\n    -> String\n    -> String"
    } --[[table: 0x41d54308]],
    split = {
      description = "#split:HowMany->Regex-> String -> List String\n Split a string, using the regex as the separator.",
      signature = "split:HowMany->Regex-> String -> List String"
    } --[[table: 0x41d54368]]
  } --[[table: 0x41d53fe0]],
  Result = {
    Result = {
      description = "#typeResult error value\n    = Ok value\n    | Err error\n A Result is either Ok meaning the computation succeeded, or it is an\nErr meaning that there was some failure.",
      signature = "typeResult error value\n    = Ok value\n    | Err error"
    } --[[table: 0x41d561c0]],
    andThen = {
      description = "#andThen:Result x a -> (a ->Result x b) ->Result x b\n Chain together a sequence of computations that may fail. It is helpful\nto see its definition:",
      signature = "andThen:Result x a -> (a ->Result x b) ->Result x b"
    } --[[table: 0x41d56220]],
    formatError = {
      description = "#formatError:  (error -> error')\n    ->Result error a\n    ->Result error' a\n Format the error value of a result. If the result is Ok, it stays exactly\nthe same, but if the result is an Err we will format the error. For example,\nsay the errors we get have too much information:",
      signature = "formatError:  (error -> error')\n    ->Result error a\n    ->Result error' a"
    } --[[table: 0x41d56280]],
    fromMaybe = {
      description = "#fromMaybe: x ->Maybe a ->Result x a\n Convert from a simple Maybe to interact with some code that primarily\nuses Results.",
      signature = "fromMaybe: x ->Maybe a ->Result x a"
    } --[[table: 0x41d562e0]],
    map = {
      description = "#map: (a -> value) ->Result x a ->Result x value\n Apply a function to a result. If the result is Ok, it will be converted.\nIf the result is an Err, the same error value will propagate through.",
      signature = "map: (a -> value) ->Result x a ->Result x value"
    } --[[table: 0x41d56340]],
    map2 = {
      description = "#map2:  (a -> b -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x value\n Apply a function to two results, if both results are Ok. If not,\nthe first argument which is an Err will propagate through.",
      signature = "map2:  (a -> b -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x value"
    } --[[table: 0x41d563a0]],
    map3 = {
      description = "#map3:  (a -> b -> c -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x value\n",
      signature = "map3:  (a -> b -> c -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x value"
    } --[[table: 0x41d56400]],
    map4 = {
      description = "#map4:  (a -> b -> c -> d -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x value\n",
      signature = "map4:  (a -> b -> c -> d -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x value"
    } --[[table: 0x41d56460]],
    map5 = {
      description = "#map5:  (a -> b -> c -> d -> e -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x e\n    ->Result x value\n",
      signature = "map5:  (a -> b -> c -> d -> e -> value)\n    ->Result x a\n    ->Result x b\n    ->Result x c\n    ->Result x d\n    ->Result x e\n    ->Result x value"
    } --[[table: 0x41d564c0]],
    toMaybe = {
      description = "#toMaybe:Result x a ->Maybe a\n Convert to a simpler Maybe if the actual error message is not needed or\nyou need to interact with some code that primarily uses maybes.",
      signature = "toMaybe:Result x a ->Maybe a"
    } --[[table: 0x41d56520]],
    withDefault = {
      description = "#withDefault: a ->Result x a -> a\n If the result is Ok return the value, but if the result is an Err then\nreturn a given default value. The following examples try to parse integers.",
      signature = "withDefault: a ->Result x a -> a"
    } --[[table: 0x41d56580]]
  } --[[table: 0x41d56198]],
  Set = {
    Set = {
      description = "#typeSet t\n Represents a set of unique values. So (Set Int) is a set of integers and\n(Set String) is a set of strings.",
      signature = "typeSet t"
    } --[[table: 0x41d59660]],
    diff = {
      description = "#diff:Set comparable ->Set comparable ->Set comparable\n Get the difference between the first set and the second. Keeps values\nthat do not appear in the second set.",
      signature = "diff:Set comparable ->Set comparable ->Set comparable"
    } --[[table: 0x41d596c0]],
    empty = {
      description = "#empty:Set a\n Create an empty set.",
      signature = "empty:Set a"
    } --[[table: 0x41d59720]],
    filter = {
      description = "#filter:  (comparable -> Bool)\n    ->Set comparable\n    ->Set comparable\n Create a new set consisting only of elements which satisfy a predicate.",
      signature = "filter:  (comparable -> Bool)\n    ->Set comparable\n    ->Set comparable"
    } --[[table: 0x41d59780]],
    foldl = {
      description = "#foldl: (comparable -> b -> b) -> b ->Set comparable -> b\n Fold over the values in a set, in order from lowest to highest.",
      signature = "foldl: (comparable -> b -> b) -> b ->Set comparable -> b"
    } --[[table: 0x41d597e0]],
    foldr = {
      description = "#foldr: (comparable -> b -> b) -> b ->Set comparable -> b\n Fold over the values in a set, in order from highest to lowest.",
      signature = "foldr: (comparable -> b -> b) -> b ->Set comparable -> b"
    } --[[table: 0x41d59840]],
    fromList = {
      description = "#fromList: List comparable ->Set comparable\n Convert a list into a set, removing any duplicates.",
      signature = "fromList: List comparable ->Set comparable"
    } --[[table: 0x41d598a0]],
    insert = {
      description = "#insert: comparable ->Set comparable ->Set comparable\n Insert a value into a set.",
      signature = "insert: comparable ->Set comparable ->Set comparable"
    } --[[table: 0x41d59900]],
    intersect = {
      description = "#intersect:Set comparable ->Set comparable ->Set comparable\n Get the intersection of two sets. Keeps values that appear in both sets.",
      signature = "intersect:Set comparable ->Set comparable ->Set comparable"
    } --[[table: 0x41d59960]],
    isEmpty = {
      description = "#isEmpty:Set a -> Bool\n Determine if a set is empty.",
      signature = "isEmpty:Set a -> Bool"
    } --[[table: 0x41d599c0]],
    map = {
      description = "#map:  (comparable -> comparable')\n    ->Set comparable\n    ->Set comparable'\n Map a function onto a set, creating a new set with no duplicates.",
      signature = "map:  (comparable -> comparable')\n    ->Set comparable\n    ->Set comparable'"
    } --[[table: 0x41d59a20]],
    member = {
      description = "#member: comparable ->Set comparable -> Bool\n Determine if a value is in a set.",
      signature = "member: comparable ->Set comparable -> Bool"
    } --[[table: 0x41d59a80]],
    partition = {
      description = "#partition:  (comparable -> Bool)\n    ->Set comparable\n    -> (Set comparable, Set comparable)\n Create two new sets; the first consisting of elements which satisfy a\npredicate, the second consisting of elements which do not.",
      signature = "partition:  (comparable -> Bool)\n    ->Set comparable\n    -> (Set comparable, Set comparable)"
    } --[[table: 0x41d59ae0]],
    remove = {
      description = "#remove: comparable ->Set comparable ->Set comparable\n Remove a value from a set. If the value is not found, no changes are made.",
      signature = "remove: comparable ->Set comparable ->Set comparable"
    } --[[table: 0x41d59b40]],
    singleton = {
      description = "#singleton: comparable ->Set comparable\n Create a set with one value.",
      signature = "singleton: comparable ->Set comparable"
    } --[[table: 0x41d59ba0]],
    size = {
      description = "#size:Set a -> Int\n Determine the number of elements in a set.",
      signature = "size:Set a -> Int"
    } --[[table: 0x41d59c00]],
    toList = {
      description = "#toList:Set comparable -> List comparable\n Convert a set into a list, sorted from lowest to highest.",
      signature = "toList:Set comparable -> List comparable"
    } --[[table: 0x41d59c60]],
    union = {
      description = "#union:Set comparable ->Set comparable ->Set comparable\n Get the union of two sets. Keep all values.",
      signature = "union:Set comparable ->Set comparable ->Set comparable"
    } --[[table: 0x41d59cc0]]
  } --[[table: 0x41d59330]],
  String = {
    all = {
      description = "#all: (Char -> Bool) -> String -> Bool\n Determine whether all characters satisfy a predicate.",
      signature = "all: (Char -> Bool) -> String -> Bool"
    } --[[table: 0x41d59ec8]],
    any = {
      description = "#any: (Char -> Bool) -> String -> Bool\n Determine whether any characters satisfy a predicate.",
      signature = "any: (Char -> Bool) -> String -> Bool"
    } --[[table: 0x41d5a5f8]],
    append = {
      description = "#append: String -> String -> String\n Append two strings. You can also use the (++) operator\nto do this.",
      signature = "append: String -> String -> String"
    } --[[table: 0x41d5a658]],
    concat = {
      description = "#concat: List String -> String\n Concatenate many strings into one.",
      signature = "concat: List String -> String"
    } --[[table: 0x41d5a680]],
    cons = {
      description = "#cons: Char -> String -> String\n Add a character to the beginning of a string.",
      signature = "cons: Char -> String -> String"
    } --[[table: 0x41d54488]],
    contains = {
      description = "#contains: String -> String -> Bool\n See if the second string contains the first one.",
      signature = "contains: String -> String -> Bool"
    } --[[table: 0x41d544e8]],
    dropLeft = {
      description = "#dropLeft: Int -> String -> String\n Drop n characters from the left side of a string.",
      signature = "dropLeft: Int -> String -> String"
    } --[[table: 0x41d56c00]],
    dropRight = {
      description = "#dropRight: Int -> String -> String\n Drop n characters from the right side of a string.",
      signature = "dropRight: Int -> String -> String"
    } --[[table: 0x41d56c60]],
    endsWith = {
      description = "#endsWith: String -> String -> Bool\n See if the second string ends with the first one.",
      signature = "endsWith: String -> String -> Bool"
    } --[[table: 0x41d56cc0]],
    filter = {
      description = "#filter: (Char -> Bool) -> String -> String\n Keep only the characters that satisfy the predicate.",
      signature = "filter: (Char -> Bool) -> String -> String"
    } --[[table: 0x41d56d20]],
    foldl = {
      description = "#foldl: (Char -> b -> b) -> b -> String -> b\n Reduce a string from the left.",
      signature = "foldl: (Char -> b -> b) -> b -> String -> b"
    } --[[table: 0x41d56d80]],
    foldr = {
      description = "#foldr: (Char -> b -> b) -> b -> String -> b\n Reduce a string from the right.",
      signature = "foldr: (Char -> b -> b) -> b -> String -> b"
    } --[[table: 0x41d56da8]],
    fromChar = {
      description = "#fromChar: Char -> String\n Create a string from a given character.",
      signature = "fromChar: Char -> String"
    } --[[table: 0x41d57880]],
    fromList = {
      description = "#fromList: List Char -> String\n Convert a list of characters into a String. Can be useful if you\nwant to create a string primarily by consing, perhaps for decoding\nsomething.",
      signature = "fromList: List Char -> String"
    } --[[table: 0x41d578e0]],
    indexes = {
      description = "#indexes: String -> String -> List Int\n Get all of the indexes for a substring in another string.",
      signature = "indexes: String -> String -> List Int"
    } --[[table: 0x41d57940]],
    indices = {
      description = "#indices: String -> String -> List Int\n Alias for indexes. ",
      signature = "indices: String -> String -> List Int"
    } --[[table: 0x41d579a0]],
    isEmpty = {
      description = "#isEmpty: String -> Bool\n Determine if a string is empty.",
      signature = "isEmpty: String -> Bool"
    } --[[table: 0x41d57a00]],
    join = {
      description = "#join: String -> List String -> String\n Put many strings together with a given separator.",
      signature = "join: String -> List String -> String"
    } --[[table: 0x41d57a60]],
    left = {
      description = "#left: Int -> String -> String\n Take n characters from the left side of a string.",
      signature = "left: Int -> String -> String"
    } --[[table: 0x41d57ac0]],
    length = {
      description = "#length: String -> Int\n Get the length of a string.",
      signature = "length: String -> Int"
    } --[[table: 0x41d57ae8]],
    lines = {
      description = "#lines: String -> List String\n Break a string into lines, splitting on newlines.",
      signature = "lines: String -> List String"
    } --[[table: 0x41d5b9b8]],
    map = {
      description = "#map: (Char -> Char) -> String -> String\n Transform every character in a string",
      signature = "map: (Char -> Char) -> String -> String"
    } --[[table: 0x41d5ba18]],
    pad = {
      description = "#pad: Int -> Char -> String -> String\n Pad a string on both sides until it has a given length.",
      signature = "pad: Int -> Char -> String -> String"
    } --[[table: 0x41d5ba78]],
    padLeft = {
      description = "#padLeft: Int -> Char -> String -> String\n Pad a string on the left until it has a given length.",
      signature = "padLeft: Int -> Char -> String -> String"
    } --[[table: 0x41d5bad8]],
    padRight = {
      description = "#padRight: Int -> Char -> String -> String\n Pad a string on the right until it has a given length.",
      signature = "padRight: Int -> Char -> String -> String"
    } --[[table: 0x41d5bb38]],
    ["repeat"] = {
      description = "#repeat: Int -> String -> String\n Repeat a string n times.",
      signature = "repeat: Int -> String -> String"
    } --[[table: 0x41d5bb98]],
    reverse = {
      description = "#reverse: String -> String\n Reverse a string.",
      signature = "reverse: String -> String"
    } --[[table: 0x41d5bbf8]],
    right = {
      description = "#right: Int -> String -> String\n Take n characters from the right side of a string.",
      signature = "right: Int -> String -> String"
    } --[[table: 0x41d5bc58]],
    slice = {
      description = "#slice: Int -> Int -> String -> String\n Take a substring given a start and end index. Negative indexes\nare taken starting from the end of the list.",
      signature = "slice: Int -> Int -> String -> String"
    } --[[table: 0x41d5bcb8]],
    split = {
      description = "#split: String -> String -> List String\n Split a string using a given separator.",
      signature = "split: String -> String -> List String"
    } --[[table: 0x41d5bd18]],
    startsWith = {
      description = "#startsWith: String -> String -> Bool\n See if the second string starts with the first one.",
      signature = "startsWith: String -> String -> Bool"
    } --[[table: 0x41d5bd78]],
    toFloat = {
      description = "#toFloat: String ->Result String Float\n Try to convert a string into a float, failing on improperly formatted strings.",
      signature = "toFloat: String ->Result String Float"
    } --[[table: 0x41d5bdd8]],
    toInt = {
      description = "#toInt: String ->Result String Int\n Try to convert a string into an int, failing on improperly formatted strings.",
      signature = "toInt: String ->Result String Int"
    } --[[table: 0x41d5be38]],
    toList = {
      description = "#toList: String -> List Char\n Convert a string to a list of characters.",
      signature = "toList: String -> List Char"
    } --[[table: 0x41d5be98]],
    toLower = {
      description = "#toLower: String -> String\n Convert a string to all lower case. Useful for case-insensitive comparisons.",
      signature = "toLower: String -> String"
    } --[[table: 0x41d5bef8]],
    toUpper = {
      description = "#toUpper: String -> String\n Convert a string to all upper case. Useful for case-insensitive comparisons\nand VIRTUAL YELLING.",
      signature = "toUpper: String -> String"
    } --[[table: 0x41d5bf58]],
    trim = {
      description = "#trim: String -> String\n Get rid of whitespace on both sides of a string.",
      signature = "trim: String -> String"
    } --[[table: 0x41d5bfb8]],
    trimLeft = {
      description = "#trimLeft: String -> String\n Get rid of whitespace on the left of a string.",
      signature = "trimLeft: String -> String"
    } --[[table: 0x41d5c018]],
    trimRight = {
      description = "#trimRight: String -> String\n Get rid of whitespace on the right of a string.",
      signature = "trimRight: String -> String"
    } --[[table: 0x41d5c078]],
    uncons = {
      description = "#uncons: String ->Maybe (Char, String)\n Split a non-empty string into its head and tail. This lets you\npattern match on strings exactly as you would with lists.",
      signature = "uncons: String ->Maybe (Char, String)"
    } --[[table: 0x41d5c0d8]],
    words = {
      description = "#words: String -> List String\n Break a string into words, splitting on chunks of whitespace.",
      signature = "words: String -> List String"
    } --[[table: 0x41d5c138]]
  } --[[table: 0x41d59ea0]],
  Task = {
    Task = {
      description = "#typealiasTask err ok =Task err ok\n Represents asynchronous effects that may fail. It is useful for stuff like\nHTTP.",
      signature = "typealiasTask err ok =Task err ok"
    } --[[table: 0x412f25e0]],
    andMap = {
      description = "#andMap:Task x (a -> b) ->Task x a ->Task x b\n Put the results of two tasks together. If either task fails, the whole\nthing fails. It also runs in order so the first task will be completely\nfinished before the second task starts.",
      signature = "andMap:Task x (a -> b) ->Task x a ->Task x b"
    } --[[table: 0x412f2640]],
    andThen = {
      description = "#andThen:Task x a -> (a ->Task x b) ->Task x b\n Chain together a task and a callback. The first task will run, and if it is\nsuccessful, you give the result to the callback resulting in another task. This\ntask then gets run.",
      signature = "andThen:Task x a -> (a ->Task x b) ->Task x b"
    } --[[table: 0x412f26a0]],
    fail = {
      description = "#fail: x ->Task x a\n A task that fails immediately when run.",
      signature = "fail: x ->Task x a"
    } --[[table: 0x412f1d70]],
    fromMaybe = {
      description = "#fromMaybe: x ->Maybe a ->Task x a\n If you are chaining together a bunch of tasks, it may be useful to treat\na maybe value like a task.",
      signature = "fromMaybe: x ->Maybe a ->Task x a"
    } --[[table: 0x412f1dd0]],
    fromResult = {
      description = "#fromResult:Result x a ->Task x a\n If you are chaining together a bunch of tasks, it may be useful to treat\na result like a task.",
      signature = "fromResult:Result x a ->Task x a"
    } --[[table: 0x412f1e30]],
    map = {
      description = "#map: (a -> b) ->Task x a ->Task x b\n Transform a task.",
      signature = "map: (a -> b) ->Task x a ->Task x b"
    } --[[table: 0x412f1e90]],
    map2 = {
      description = "#map2:  (a -> b -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x result\n Put the results of two tasks together. If either task fails, the whole\nthing fails. It also runs in order so the first task will be completely\nfinished before the second task starts.",
      signature = "map2:  (a -> b -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x result"
    } --[[table: 0x412f1ef0]],
    map3 = {
      description = "#map3:  (a -> b -> c -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x result\n",
      signature = "map3:  (a -> b -> c -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x result"
    } --[[table: 0x412f1f50]],
    map4 = {
      description = "#map4:  (a -> b -> c -> d -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x result\n",
      signature = "map4:  (a -> b -> c -> d -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x result"
    } --[[table: 0x412f4138]],
    map5 = {
      description = "#map5:  (a -> b -> c -> d -> e -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x e\n    ->Task x result\n",
      signature = "map5:  (a -> b -> c -> d -> e -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x e\n    ->Task x result"
    } --[[table: 0x412f4198]],
    mapError = {
      description = "#mapError: (x -> y) ->Task x a ->Task y a\n Transform the error value. This can be useful if you need a bunch of error\ntypes to match up.",
      signature = "mapError: (x -> y) ->Task x a ->Task y a"
    } --[[table: 0x412f41f8]],
    onError = {
      description = "#onError:Task x a -> (x ->Task y a) ->Task y a\n Recover from a failure in a task. If the given task fails, we use the\ncallback to recover.",
      signature = "onError:Task x a -> (x ->Task y a) ->Task y a"
    } --[[table: 0x412f4258]],
    perform = {
      description = "#perform: (x -> msg) -> (a -> msg) ->Task x a ->Cmd msg\n Command the runtime system to perform a task. The most important argument\nis the Task which describes what you want to happen. But you also need to\nprovide functions to tag the two possible outcomes of the task. It can fail or\nsucceed, but either way, you need to have a message to feed back into your\napplication.",
      signature = "perform: (x -> msg) -> (a -> msg) ->Task x a ->Cmd msg"
    } --[[table: 0x412f42b8]],
    sequence = {
      description = "#sequence: List (Task x a) ->Task x (List a)\n Start with a list of tasks, and turn them into a single task that returns a\nlist. The tasks will be run in order one-by-one and if any task fails the whole\nsequence fails.",
      signature = "sequence: List (Task x a) ->Task x (List a)"
    } --[[table: 0x412f4318]],
    succeed = {
      description = "#succeed: a ->Task x a\n A task that succeeds immediately when run.",
      signature = "succeed: a ->Task x a"
    } --[[table: 0x412f4378]],
    toMaybe = {
      description = "#toMaybe:Task x a ->Task never (Maybe a)\n Translate a task that can fail into a task that can never fail, by\nconverting any failure into Nothing and any success into Just something.",
      signature = "toMaybe:Task x a ->Task never (Maybe a)"
    } --[[table: 0x412f43d8]],
    toResult = {
      description = "#toResult:Task x a ->Task never (Result x a)\n Translate a task that can fail into a task that can never fail, by\nconverting any failure into Err something and any success into Ok something.",
      signature = "toResult:Task x a ->Task never (Result x a)"
    } --[[table: 0x412f4438]]
  } --[[table: 0x412f22b0]],
  Time = {
    Time = {
      description = "#typealiasTime=\n    Float\n Type alias to make it clearer when you are working with time values.\nUsing the Time helpers like second and inSeconds instead of raw numbers\nis very highly recommended.",
      signature = "typealiasTime=\n    Float"
    } --[[table: 0x412f4e18]],
    every = {
      description = "#every:Time-> (Time-> msg) ->Sub msg\n Subscribe to the current time. First you provide an interval describing how\nfrequently you want updates. Second, you give a tagger that turns a time into a\nmessage for your update function. So if you want to hear about the current\ntime every second, you would say something like this:",
      signature = "every:Time-> (Time-> msg) ->Sub msg"
    } --[[table: 0x412f4e78]],
    hour = {
      description = "#hour:Time\n",
      signature = "hour:Time"
    } --[[table: 0x412f4c10]],
    inHours = {
      description = "#inHours:Time-> Float\n",
      signature = "inHours:Time-> Float"
    } --[[table: 0x412f5cf0]],
    inMilliseconds = {
      description = "#inMilliseconds:Time-> Float\n",
      signature = "inMilliseconds:Time-> Float"
    } --[[table: 0x412f5d50]],
    inMinutes = {
      description = "#inMinutes:Time-> Float\n",
      signature = "inMinutes:Time-> Float"
    } --[[table: 0x412f5db0]],
    inSeconds = {
      description = "#inSeconds:Time-> Float\n",
      signature = "inSeconds:Time-> Float"
    } --[[table: 0x412f5e10]],
    millisecond = {
      description = "#millisecond:Time\n Units of time, making it easier to specify things like a half-second\n(500 * millisecond) without remembering Elm’s underlying units of time.",
      signature = "millisecond:Time"
    } --[[table: 0x412f5e70]],
    minute = {
      description = "#minute:Time\n",
      signature = "minute:Time"
    } --[[table: 0x412f5ed0]],
    now = {
      description = "#now:Task x Time\n Get the Time at the moment when this task is run.",
      signature = "now:Task x Time"
    } --[[table: 0x412f5f30]],
    second = {
      description = "#second:Time\n",
      signature = "second:Time"
    } --[[table: 0x412f5f90]]
  } --[[table: 0x412f4df0]],
  abs = {
    description = "#abs: number -> number\n Take the absolute value of a number. ",
    signature = "abs: number -> number"
  } --[[table: 0x40d178c0]],
  acos = {
    description = "#acos: Float -> Float\n",
    signature = "acos: Float -> Float"
  } --[[table: 0x40d17920]],
  always = {
    description = "#always: a -> b -> a\n Create a constant function,\na function that always returns the same value regardless of what input you give.\nIt is defined as:",
    signature = "always: a -> b -> a"
  } --[[table: 0x40d17980]],
  asin = {
    description = "#asin: Float -> Float\n",
    signature = "asin: Float -> Float"
  } --[[table: 0x40ce1518]],
  atan = {
    description = "#atan: Float -> Float\n You probably do not want to use this. It takes (y/x) as the\nargument, so there is no way to know whether the negative signs comes from\nthe y or x. Thus, the resulting angle is always between π/2 and -π/2\n(in quadrants I and IV). You probably want to use atan2 instead.",
    signature = "atan: Float -> Float"
  } --[[table: 0x40ce1578]],
  atan2 = {
    description = "#atan2: Float -> Float -> Float\n This helps you find the angle of a Cartesian coordinate.\nYou will almost certainly want to use this instead of atan.\nSo atan2 y x computes atan(y/x) but also keeps track of which\nquadrant the angle should really be in. The result will be between\nπ and -π, giving you the full range of angles.",
    signature = "atan2: Float -> Float -> Float"
  } --[[table: 0x40ce15d8]],
  ceiling = {
    description = "#ceiling: Float -> Int\n Ceiling function, rounding up. ",
    signature = "ceiling: Float -> Int"
  } --[[table: 0x40ce1638]],
  clamp = {
    description = "#clamp: number -> number -> number -> number\n Clamps a number within a given range. With the expression\nclamp 100 200 x the results are as follows:",
    signature = "clamp: number -> number -> number -> number"
  } --[[table: 0x40ce1698]],
  compare = {
    description = "#compare: comparable -> comparable ->Order\n Compare any two comparable values. Comparable values include String, Char,\nInt, Float, Time, or a list or tuple containing comparable values.\nThese are also the only values that work as Dict keys or Set members.",
    signature = "compare: comparable -> comparable ->Order"
  } --[[table: 0x40ce16c0]],
  cos = {
    description = "#cos: Float -> Float\n",
    signature = "cos: Float -> Float"
  } --[[table: 0x416ad6b0]],
  curry = {
    description = "#curry: ((a, b) -> c) -> a -> b -> c\n Change how arguments are passed to a function.\nThis splits paired arguments into two separate arguments.",
    signature = "curry: ((a, b) -> c) -> a -> b -> c"
  } --[[table: 0x416ad710]],
  degrees = {
    description = "#degrees: Float -> Float\n Convert degrees to standard Elm angles (radians). ",
    signature = "degrees: Float -> Float"
  } --[[table: 0x416ad770]],
  e = {
    description = "#e: Float\n An approximation of e. ",
    signature = "e: Float"
  } --[[table: 0x416ad7d0]],
  flip = {
    description = "#flip: (a -> b -> c) -> b -> a -> c\n Flip the order of the first two arguments to a function. ",
    signature = "flip: (a -> b -> c) -> b -> a -> c"
  } --[[table: 0x416ad830]],
  floor = {
    description = "#floor: Float -> Int\n Floor function, rounding down. ",
    signature = "floor: Float -> Int"
  } --[[table: 0x416ad890]],
  fromPolar = {
    description = "#fromPolar: (Float, Float) -> (Float, Float)\n Convert polar coordinates (r,θ) to Cartesian coordinates (x,y). ",
    signature = "fromPolar: (Float, Float) -> (Float, Float)"
  } --[[table: 0x416ad8f0]],
  fst = {
    description = "#fst: (a, b) -> a\n Given a 2-tuple, returns the first value. ",
    signature = "fst: (a, b) -> a"
  } --[[table: 0x416ad950]],
  identity = {
    description = "#identity: a -> a\n Given a value, returns exactly the same value. This is called\nthe identity function.",
    signature = "identity: a -> a"
  } --[[table: 0x416ad9b0]],
  isInfinite = {
    description = "#isInfinite: Float -> Bool\n Determine whether a float is positive or negative infinity.",
    signature = "isInfinite: Float -> Bool"
  } --[[table: 0x416ada10]],
  isNaN = {
    description = "#isNaN: Float -> Bool\n Determine whether a float is an undefined or unrepresentable number.\nNaN stands for not a number and it is a standardized part of floating point\nnumbers.",
    signature = "isNaN: Float -> Bool"
  } --[[table: 0x40ccf4e0]],
  logBase = {
    description = "#logBase: Float -> Float -> Float\n Calculate the logarithm of a number with a given base.",
    signature = "logBase: Float -> Float -> Float"
  } --[[table: 0x40ccf540]],
  max = {
    description = "#max: comparable -> comparable -> comparable\n Find the larger of two comparables. ",
    signature = "max: comparable -> comparable -> comparable"
  } --[[table: 0x40ccf5a0]],
  min = {
    description = "#min: comparable -> comparable -> comparable\n Find the smaller of two comparables. ",
    signature = "min: comparable -> comparable -> comparable"
  } --[[table: 0x40ccf600]],
  negate = {
    description = "#negate: number -> number\n Negate a number.",
    signature = "negate: number -> number"
  } --[[table: 0x40ccf660]],
  ["not"] = {
    description = "#not: Bool -> Bool\n Negate a boolean value.",
    signature = "not: Bool -> Bool"
  } --[[table: 0x40ccf6c0]],
  pi = {
    description = "#pi: Float\n An approximation of pi. ",
    signature = "pi: Float"
  } --[[table: 0x40ccf720]],
  radians = {
    description = "#radians: Float -> Float\n Convert radians to standard Elm angles (radians). ",
    signature = "radians: Float -> Float"
  } --[[table: 0x40ccf780]],
  rem = {
    description = "#rem: Int -> Int -> Int\n Find the remainder after dividing one number by another.",
    signature = "rem: Int -> Int -> Int"
  } --[[table: 0x40ccf7e0]],
  round = {
    description = "#round: Float -> Int\n Round a number to the nearest integer. ",
    signature = "round: Float -> Int"
  } --[[table: 0x40ccf840]],
  sin = {
    description = "#sin: Float -> Float\n",
    signature = "sin: Float -> Float"
  } --[[table: 0x40ccf8a0]],
  snd = {
    description = "#snd: (a, b) -> b\n Given a 2-tuple, returns the second value. ",
    signature = "snd: (a, b) -> b"
  } --[[table: 0x40ccf900]],
  sqrt = {
    description = "#sqrt: Float -> Float\n Take the square root of a number. ",
    signature = "sqrt: Float -> Float"
  } --[[table: 0x412c3d48]],
  tan = {
    description = "#tan: Float -> Float\n",
    signature = "tan: Float -> Float"
  } --[[table: 0x412c3da8]],
  toFloat = {
    description = "#toFloat: Int -> Float\n Convert an integer into a float. ",
    signature = "toFloat: Int -> Float"
  } --[[table: 0x412c3e08]],
  toPolar = {
    description = "#toPolar: (Float, Float) -> (Float, Float)\n Convert Cartesian coordinates (x,y) to polar coordinates (r,θ). ",
    signature = "toPolar: (Float, Float) -> (Float, Float)"
  } --[[table: 0x412c3e68]],
  toString = {
    description = "#toString: a -> String\n Turn any kind of value into a string. When you view the resulting string\nwith Text.fromString it should look just like the value it came from.",
    signature = "toString: a -> String"
  } --[[table: 0x412c3ec8]],
  truncate = {
    description = "#truncate: Float -> Int\n Truncate a number, rounding towards zero. ",
    signature = "truncate: Float -> Int"
  } --[[table: 0x412c3f28]],
  turns = {
    description = "#turns: Float -> Float\n Convert turns to standard Elm angles (radians).\nOne turn is equal to 360°.",
    signature = "turns: Float -> Float"
  } --[[table: 0x412c3f88]],
  uncurry = {
    description = "#uncurry: (a -> b -> c) -> (a, b) -> c\n Change how arguments are passed to a function.\nThis combines two arguments into a single pair.",
    signature = "uncurry: (a -> b -> c) -> (a, b) -> c"
  } --[[table: 0x412c3fe8]],
  xor = {
    description = "#xor: Bool -> Bool -> Bool\n The exclusive-or operator. True if exactly one input is True. ",
    signature = "xor: Bool -> Bool -> Bool"
  } --[[table: 0x412c4048]]
} --[[table: 0x40e60328]]