return {
  HowMany = {
    description = "#typeHowMany\n    = All\n    | AtMost Int\nHowMany is used to specify how many matches you want to make. So\nreplace All would replace every match, but replace (AtMost 2) would\nreplace at most two matches (i.e. zero, one, two, but never three or more).",
    signature = "typeHowMany\n    = All\n    | AtMost Int"
  } --[[table: 0x41bd54b8]],
  Match = {
    description = "#typealiasMatch=\n    { match : String\n    , submatches : List (Maybe String)\n    , index : Int\n    , number : Int\n    }\n A Match represents all of the details about a particular match in a string.\nHere are details on each field:",
    signature = "typealiasMatch=\n    { match : String\n    , submatches : List (Maybe String)\n    , index : Int\n    , number : Int\n    }"
  } --[[table: 0x41bd5c08]],
  Regex = {
    description = "#typeRegex\n A regular expression, describing a certain set of strings.",
    signature = "typeRegex"
  } --[[table: 0x4177e018]],
  caseInsensitive = {
    description = "#caseInsensitive:Regex->Regex\n Make a regex case insensitive ",
    signature = "caseInsensitive:Regex->Regex"
  } --[[table: 0x41bd5108]],
  contains = {
    description = "#contains:Regex-> String -> Bool\n Check to see if a Regex is contained in a string.",
    signature = "contains:Regex-> String -> Bool"
  } --[[table: 0x41bd71f0]],
  escape = {
    description = "#escape: String -> String\n Escape strings to be regular expressions, making all special characters\nsafe. So regex (escape \"^a+\") will match exactly \"^a+\" instead of a series\nof a’s that start at the beginning of the line.",
    signature = "escape: String -> String"
  } --[[table: 0x4177de00]],
  find = {
    description = "#find:HowMany->Regex-> String -> List Match\n Find matches in a string:",
    signature = "find:HowMany->Regex-> String -> List Match"
  } --[[table: 0x41bd84a0]],
  regex = {
    description = "#regex: String ->Regex\n Create a Regex that matches patterns as specified in JavaScript.",
    signature = "regex: String ->Regex"
  } --[[table: 0x4177e520]],
  replace = {
    description = "#replace:HowMany->Regex-> (Match-> String)\n    -> String\n    -> String\n Replace matches. The function from Match to String lets\nyou use the details of a specific match when making replacements.",
    signature = "replace:HowMany->Regex-> (Match-> String)\n    -> String\n    -> String"
  } --[[table: 0x40f34b88]],
  split = {
    description = "#split:HowMany->Regex-> String -> List String\n Split a string, using the regex as the separator.",
    signature = "split:HowMany->Regex-> String -> List String"
  } --[[table: 0x41bdac80]]
} --[[table: 0x4177db60]]