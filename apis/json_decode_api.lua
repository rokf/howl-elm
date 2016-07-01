return {
  Decoder = {
    description = "#typeDecoder a\n Represents a way of decoding JSON values. If you have a (Decoder (List String))\nit will attempt to take some JSON value and turn it into a list of strings.\nThese decoders are easy to put together so you can create more and more complex\ndecoders.",
    signature = "typeDecoder a"
  } --[[table: 0x406700e8]],
  Value = {
    description = "#typealiasValue=Value\n Represents a JavaScript value.",
    signature = "typealiasValue=Value"
  } --[[table: 0x40670470]],
  andThen = {
    description = "#andThen:Decoder a -> (a ->Decoder b) ->Decoder b\n Helpful when a field tells you about the overall structure of the JSON\nyou are dealing with. For example, imagine we are getting JSON representing\ndifferent shapes. Data like this:",
    signature = "andThen:Decoder a -> (a ->Decoder b) ->Decoder b"
  } --[[table: 0x40213a18]],
  array = {
    description = "#array:Decoder a ->Decoder (Array a)\n Extract an Array from a JS array.",
    signature = "array:Decoder a ->Decoder (Array a)"
  } --[[table: 0x41918908]],
  at = {
    description = "#at: List String ->Decoder a ->Decoder a\n Access a nested field, making it easy to dive into big structures. This is\nreally a helper function so you do not need to write (:=) so many times.",
    signature = "at: List String ->Decoder a ->Decoder a"
  } --[[table: 0x4067a360]],
  bool = {
    description = "#bool:Decoder Bool\n Extract a boolean.",
    signature = "bool:Decoder Bool"
  } --[[table: 0x40671da8]],
  customDecoder = {
    description = "#customDecoder:Decoder a -> (a ->Result String b) ->Decoder b\n Create a custom decoder that may do some fancy computation. See the value\ndocumentation for an example usage.",
    signature = "customDecoder:Decoder a -> (a ->Result String b) ->Decoder b"
  } --[[table: 0x40672208]],
  decodeString = {
    description = "#decodeString:Decoder a -> String ->Result String a\n Using a certain decoder, attempt to parse a JSON string. If the decoder\nfails, you will get a string message telling you why.",
    signature = "decodeString:Decoder a -> String ->Result String a"
  } --[[table: 0x40670af0]],
  decodeValue = {
    description = "#decodeValue:Decoder a ->Value->Result String a\n Using a certain decoder, attempt to parse a raw Json.Value. You can pass\na Json.Value into Elm through a port, so this can let you handle data with\nextra weird shapes or stuff that currently is not allowed through ports\nautomatically.",
    signature = "decodeValue:Decoder a ->Value->Result String a"
  } --[[table: 0x40671018]],
  dict = {
    description = "#dict:Decoder a ->Decoder (Dict String a)\n Turn any object into a dictionary of key-value pairs, including inherited enumerable properties. Fails if any value can't be\ndecoded with the given decoder.",
    signature = "dict:Decoder a ->Decoder (Dict String a)"
  } --[[table: 0x40211a40]],
  fail = {
    description = "#fail: String ->Decoder a\n A decoder that always fails. Useful when paired with andThen or oneOf\nto improve error messages when things go wrong. For example, the following\ndecoder is able to provide a much more specific error message when fail is\nthe last option.",
    signature = "fail: String ->Decoder a"
  } --[[table: 0x40678238]],
  float = {
    description = "#float:Decoder Float\n Extract a float.",
    signature = "float:Decoder Float"
  } --[[table: 0x40671928]],
  int = {
    description = "#int:Decoder Int\n Extract an integer.",
    signature = "int:Decoder Int"
  } --[[table: 0x40671698]],
  keyValuePairs = {
    description = "#keyValuePairs:Decoder a ->Decoder (List (String, a))\n Turn any object into a list of key-value pairs, including inherited enumerable properties. Fails if any value can't be\ndecoded with the given decoder.",
    signature = "keyValuePairs:Decoder a ->Decoder (List (String, a))"
  } --[[table: 0x402115c8]],
  list = {
    description = "#list:Decoder a ->Decoder (List a)\n Extract a List from a JS array.",
    signature = "list:Decoder a ->Decoder (List a)"
  } --[[table: 0x41918548]],
  map = {
    description = "#map: (a -> b) ->Decoder a ->Decoder b\n Transform the value returned by a decoder. Most useful when paired with\nthe oneOf function.",
    signature = "map: (a -> b) ->Decoder a ->Decoder b"
  } --[[table: 0x40212a08]],
  maybe = {
    description = "#maybe:Decoder a ->Decoder (Maybe a)\n Extract a Maybe value, wrapping successes with Just and turning any\nfailure in Nothing. If you are expecting that a field can sometimes be null,\nit's better to check for it explicitly, as this function will swallow\nerrors from ill-formed JSON.",
    signature = "maybe:Decoder a ->Decoder (Maybe a)"
  } --[[table: 0x40212138]],
  null = {
    description = "#null: a ->Decoder a\n Decode null as the value given, and fail otherwise. Primarily useful for\ncreating other decoders.",
    signature = "null: a ->Decoder a"
  } --[[table: 0x4066fe80]],
  object1 = {
    description = "#object1: (a -> value) ->Decoder a ->Decoder value\n Apply a function to a decoder. You can use this function as map if you\nmust (which can be done with any objectN function actually).",
    signature = "object1: (a -> value) ->Decoder a ->Decoder value"
  } --[[table: 0x4067a7e0]],
  object2 = {
    description = "#object2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value\n Use two different decoders on a JS value. This is nice for extracting\nmultiple fields from an object.",
    signature = "object2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value"
  } --[[table: 0x4067aba0]],
  object3 = {
    description = "#object3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value\n Use three different decoders on a JS value. This is nice for extracting\nmultiple fields from an object.",
    signature = "object3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value"
  } --[[table: 0x4020e360]],
  object4 = {
    description = "#object4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value\n",
    signature = "object4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value"
  } --[[table: 0x4020ec68]],
  object5 = {
    description = "#object5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value\n",
    signature = "object5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value"
  } --[[table: 0x4020eef8]],
  object6 = {
    description = "#object6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value\n",
    signature = "object6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value"
  } --[[table: 0x4020f6c8]],
  object7 = {
    description = "#object7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value\n",
    signature = "object7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value"
  } --[[table: 0x402101f8]],
  object8 = {
    description = "#object8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value\n",
    signature = "object8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value"
  } --[[table: 0x40210a48]],
  oneOf = {
    description = "#oneOf: List (Decoder a) ->Decoder a\n Try out multiple different decoders. This is helpful when you are dealing\nwith something with a very strange shape and when andThen does not help\nnarrow things down so you can be more targeted.",
    signature = "oneOf: List (Decoder a) ->Decoder a"
  } --[[table: 0x402125c0]],
  string = {
    description = "#string:Decoder String\n Extract a string.",
    signature = "string:Decoder String"
  } --[[table: 0x406713a0]],
  succeed = {
    description = "#succeed: a ->Decoder a\n A decoder that always succeeds. Useful when paired with andThen or\noneOf but everything is supposed to work out at the end. For example,\nmaybe you have an optional field that can have a default value when it is\nmissing.",
    signature = "succeed: a ->Decoder a"
  } --[[table: 0x40213630]],
  tuple1 = {
    description = "#tuple1: (a -> value) ->Decoder a ->Decoder value\n Handle an array with exactly one element.",
    signature = "tuple1: (a -> value) ->Decoder a ->Decoder value"
  } --[[table: 0x40675308]],
  tuple2 = {
    description = "#tuple2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value\n Handle an array with exactly two elements. Useful for points and simple\npairs.",
    signature = "tuple2:  (a -> b -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder value"
  } --[[table: 0x40675668]],
  tuple3 = {
    description = "#tuple3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value\n Handle an array with exactly three elements.",
    signature = "tuple3:  (a -> b -> c -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder value"
  } --[[table: 0x406768d8]],
  tuple4 = {
    description = "#tuple4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value\n",
    signature = "tuple4:  (a -> b -> c -> d -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder value"
  } --[[table: 0x40677600]],
  tuple5 = {
    description = "#tuple5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value\n",
    signature = "tuple5:  (a -> b -> c -> d -> e -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder value"
  } --[[table: 0x40677a40]],
  tuple6 = {
    description = "#tuple6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value\n",
    signature = "tuple6:  (a -> b -> c -> d -> e -> f -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder value"
  } --[[table: 0x40677fa8]],
  tuple7 = {
    description = "#tuple7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value\n",
    signature = "tuple7:  (a -> b -> c -> d -> e -> f -> g -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder value"
  } --[[table: 0x41e56b90]],
  tuple8 = {
    description = "#tuple8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value\n",
    signature = "tuple8:  (a -> b -> c -> d -> e -> f -> g -> h -> value)\n    ->Decoder a\n    ->Decoder b\n    ->Decoder c\n    ->Decoder d\n    ->Decoder e\n    ->Decoder f\n    ->Decoder g\n    ->Decoder h\n    ->Decoder value"
  } --[[table: 0x419182a0]],
  value = {
    description = "#value:DecoderValue\n Bring in an arbitrary JSON value. Useful if you need to work with crazily\nformatted data. For example, this lets you create a parser for \"variadic\" lists\nwhere the first few types are different, followed by 0 or more of the same\ntype.",
    signature = "value:DecoderValue"
  } --[[table: 0x40213d68]]
} --[[table: 0x4066efb0]]