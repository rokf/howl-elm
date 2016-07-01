return {
  Time = {
    description = "#typealiasTime=\n    Float\n Type alias to make it clearer when you are working with time values.\nUsing the Time helpers like second and inSeconds instead of raw numbers\nis very highly recommended.",
    signature = "typealiasTime=\n    Float"
  } --[[table: 0x40caf090]],
  every = {
    description = "#every:Time-> (Time-> msg) ->Sub msg\n Subscribe to the current time. First you provide an interval describing how\nfrequently you want updates. Second, you give a tagger that turns a time into a\nmessage for your update function. So if you want to hear about the current\ntime every second, you would say something like this:",
    signature = "every:Time-> (Time-> msg) ->Sub msg"
  } --[[table: 0x403e6718]],
  hour = {
    description = "#hour:Time\n",
    signature = "hour:Time"
  } --[[table: 0x40cb0708]],
  inHours = {
    description = "#inHours:Time-> Float\n",
    signature = "inHours:Time-> Float"
  } --[[table: 0x40cb36d8]],
  inMilliseconds = {
    description = "#inMilliseconds:Time-> Float\n",
    signature = "inMilliseconds:Time-> Float"
  } --[[table: 0x40cb09e8]],
  inMinutes = {
    description = "#inMinutes:Time-> Float\n",
    signature = "inMinutes:Time-> Float"
  } --[[table: 0x40cb28e0]],
  inSeconds = {
    description = "#inSeconds:Time-> Float\n",
    signature = "inSeconds:Time-> Float"
  } --[[table: 0x40cb0fc0]],
  millisecond = {
    description = "#millisecond:Time\n Units of time, making it easier to specify things like a half-second\n(500 * millisecond) without remembering Elm’s underlying units of time.",
    signature = "millisecond:Time"
  } --[[table: 0x40cafe58]],
  minute = {
    description = "#minute:Time\n",
    signature = "minute:Time"
  } --[[table: 0x40cb0498]],
  now = {
    description = "#now:Task x Time\n Get the Time at the moment when this task is run.",
    signature = "now:Task x Time"
  } --[[table: 0x40caf5a8]],
  second = {
    description = "#second:Time\n",
    signature = "second:Time"
  } --[[table: 0x40cb0160]]
} --[[table: 0x40cae6b0]]