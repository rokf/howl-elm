return {
  Cmd = {
    description = "#typeCmd msg\n A command is a way of telling Elm, “Hey, I want you to do this thing!”\nSo if you want to send an HTTP request, you would need to command Elm to do it.\nOr if you wanted to ask for geolocation, you would need to command Elm to go\nget it.",
    signature = "typeCmd msg"
  } --[[table: 0x407add58]],
  batch = {
    description = "#batch: List (Cmd msg) ->Cmd msg\n",
    signature = "batch: List (Cmd msg) ->Cmd msg"
  } --[[table: 0x407ae610]],
  map = {
    description = "#map: (a -> msg) ->Cmd a ->Cmd msg\n",
    signature = "map: (a -> msg) ->Cmd a ->Cmd msg"
  } --[[table: 0x407ae308]],
  none = {
    description = "#none:Cmd msg\n",
    signature = "none:Cmd msg"
  } --[[table: 0x407ae888]]
} --[[table: 0x407ad8b0]]