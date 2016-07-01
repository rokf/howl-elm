return {
  Sub = {
    description = "#typeSub msg\n A subscription is a way of telling Elm, “Hey, let me know if anything\ninteresting happens over there!” So if you want listen for messages on a web\nsocket, you would tell Elm to create a subscription. If you want to get clock\nticks, you would tell Elm to subscribe to that. The cool thing here is that\nthis means Elm manages all the details of subscriptions instead of you.\nSo if a web socket goes down, you do not need to manually reconnect with an\nexponential backoff strategy, Elm does this all for you behind the scenes!",
    signature = "typeSub msg"
  } --[[table: 0x40fb6e60]],
  batch = {
    description = "#batch: List (Sub msg) ->Sub msg\n",
    signature = "batch: List (Sub msg) ->Sub msg"
  } --[[table: 0x40fb6ad0]],
  map = {
    description = "#map: (a -> msg) ->Sub a ->Sub msg\n",
    signature = "map: (a -> msg) ->Sub a ->Sub msg"
  } --[[table: 0x40fb7530]],
  none = {
    description = "#none:Sub msg\n",
    signature = "none:Sub msg"
  } --[[table: 0x40ac8220]]
} --[[table: 0x40fb6678]]