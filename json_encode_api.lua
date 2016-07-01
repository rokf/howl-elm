return {
  Value = {
    description = "#typeValue\n Represents a JavaScript value.",
    signature = "typeValue"
  } --[[table: 0x40c2dec8]],
  array = {
    description = "#array:ArrayValue->Value\n",
    signature = "array:ArrayValue->Value"
  } --[[table: 0x40baf5b0]],
  bool = {
    description = "#bool: Bool ->Value\n",
    signature = "bool: Bool ->Value"
  } --[[table: 0x40bac740]],
  encode = {
    description = "#encode: Int ->Value-> String\n Convert a Value into a prettified string. The first argument specifies\nthe amount of indentation in the resulting string.",
    signature = "encode: Int ->Value-> String"
  } --[[table: 0x4012e5d8]],
  float = {
    description = "#float: Float ->Value\n Encode a Float. Infinity and NaN are encoded as null.",
    signature = "float: Float ->Value"
  } --[[table: 0x40c2e768]],
  int = {
    description = "#int: Int ->Value\n",
    signature = "int: Int ->Value"
  } --[[table: 0x40c2e3f8]],
  list = {
    description = "#list: List Value->Value\n",
    signature = "list: List Value->Value"
  } --[[table: 0x40bae6e0]],
  null = {
    description = "#null:Value\n",
    signature = "null:Value"
  } --[[table: 0x40bae418]],
  object = {
    description = "#object: List (String, Value) ->Value\n",
    signature = "object: List (String, Value) ->Value"
  } --[[table: 0x40baf8b8]],
  string = {
    description = "#string: String ->Value\n",
    signature = "string: String ->Value"
  } --[[table: 0x40c2e1d0]]
} --[[table: 0x40c2d3f0]]