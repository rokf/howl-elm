return {
  KeyCode = {
    description = "#typealiasKeyCode=\n    Int\n Keyboard keys can be represented as integers. These are called key codes.\nYou can use toCode and fromCode to convert between\nkey codes and characters.",
    signature = "typealiasKeyCode=\n    Int"
  } --[[table: 0x41345408]],
  fromCode = {
    description = "#fromCode:KeyCode-> Char\n Convert from key code. ",
    signature = "fromCode:KeyCode-> Char"
  } --[[table: 0x41347bf0]],
  isDigit = {
    description = "#isDigit: Char -> Bool\n True for ASCII digits [0-9]. ",
    signature = "isDigit: Char -> Bool"
  } --[[table: 0x41343928]],
  isHexDigit = {
    description = "#isHexDigit: Char -> Bool\n True for ASCII hexadecimal digits [0-9a-fA-F]. ",
    signature = "isHexDigit: Char -> Bool"
  } --[[table: 0x41343ee0]],
  isLower = {
    description = "#isLower: Char -> Bool\n True for lower case ASCII letters. ",
    signature = "isLower: Char -> Bool"
  } --[[table: 0x413435f0]],
  isOctDigit = {
    description = "#isOctDigit: Char -> Bool\n True for ASCII octal digits [0-7]. ",
    signature = "isOctDigit: Char -> Bool"
  } --[[table: 0x41343b98]],
  isUpper = {
    description = "#isUpper: Char -> Bool\n True for upper case ASCII letters. ",
    signature = "isUpper: Char -> Bool"
  } --[[table: 0x41343338]],
  toCode = {
    description = "#toCode: Char ->KeyCode\n Convert to key code.",
    signature = "toCode: Char ->KeyCode"
  } --[[table: 0x41347920]],
  toLocaleLower = {
    description = "#toLocaleLower: Char -> Char\n Convert to lower case, according to any locale-specific case mappings. ",
    signature = "toLocaleLower: Char -> Char"
  } --[[table: 0x41344d30]],
  toLocaleUpper = {
    description = "#toLocaleUpper: Char -> Char\n Convert to upper case, according to any locale-specific case mappings. ",
    signature = "toLocaleUpper: Char -> Char"
  } --[[table: 0x413448e8]],
  toLower = {
    description = "#toLower: Char -> Char\n Convert to lower case. ",
    signature = "toLower: Char -> Char"
  } --[[table: 0x41344610]],
  toUpper = {
    description = "#toUpper: Char -> Char\n Convert to upper case. ",
    signature = "toUpper: Char -> Char"
  } --[[table: 0x41344348]]
} --[[table: 0x41342c00]]