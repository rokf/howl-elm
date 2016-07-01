return {
  Task = {
    description = "#typealiasTask err ok =Task err ok\n Represents asynchronous effects that may fail. It is useful for stuff like\nHTTP.",
    signature = "typealiasTask err ok =Task err ok"
  } --[[table: 0x4171e130]],
  andMap = {
    description = "#andMap:Task x (a -> b) ->Task x a ->Task x b\n Put the results of two tasks together. If either task fails, the whole\nthing fails. It also runs in order so the first task will be completely\nfinished before the second task starts.",
    signature = "andMap:Task x (a -> b) ->Task x a ->Task x b"
  } --[[table: 0x417222e0]],
  andThen = {
    description = "#andThen:Task x a -> (a ->Task x b) ->Task x b\n Chain together a task and a callback. The first task will run, and if it is\nsuccessful, you give the result to the callback resulting in another task. This\ntask then gets run.",
    signature = "andThen:Task x a -> (a ->Task x b) ->Task x b"
  } --[[table: 0x41723a68]],
  fail = {
    description = "#fail: x ->Task x a\n A task that fails immediately when run.",
    signature = "fail: x ->Task x a"
  } --[[table: 0x4171e6e0]],
  fromMaybe = {
    description = "#fromMaybe: x ->Maybe a ->Task x a\n If you are chaining together a bunch of tasks, it may be useful to treat\na maybe value like a task.",
    signature = "fromMaybe: x ->Maybe a ->Task x a"
  } --[[table: 0x41726750]],
  fromResult = {
    description = "#fromResult:Result x a ->Task x a\n If you are chaining together a bunch of tasks, it may be useful to treat\na result like a task.",
    signature = "fromResult:Result x a ->Task x a"
  } --[[table: 0x41727cc0]],
  map = {
    description = "#map: (a -> b) ->Task x a ->Task x b\n Transform a task.",
    signature = "map: (a -> b) ->Task x a ->Task x b"
  } --[[table: 0x4171ea30]],
  map2 = {
    description = "#map2:  (a -> b -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x result\n Put the results of two tasks together. If either task fails, the whole\nthing fails. It also runs in order so the first task will be completely\nfinished before the second task starts.",
    signature = "map2:  (a -> b -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x result"
  } --[[table: 0x41720450]],
  map3 = {
    description = "#map3:  (a -> b -> c -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x result\n",
    signature = "map3:  (a -> b -> c -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x result"
  } --[[table: 0x41721808]],
  map4 = {
    description = "#map4:  (a -> b -> c -> d -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x result\n",
    signature = "map4:  (a -> b -> c -> d -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x result"
  } --[[table: 0x41721b08]],
  map5 = {
    description = "#map5:  (a -> b -> c -> d -> e -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x e\n    ->Task x result\n",
    signature = "map5:  (a -> b -> c -> d -> e -> result)\n    ->Task x a\n    ->Task x b\n    ->Task x c\n    ->Task x d\n    ->Task x e\n    ->Task x result"
  } --[[table: 0x41721ed0]],
  mapError = {
    description = "#mapError: (x -> y) ->Task x a ->Task y a\n Transform the error value. This can be useful if you need a bunch of error\ntypes to match up.",
    signature = "mapError: (x -> y) ->Task x a ->Task y a"
  } --[[table: 0x41725c70]],
  onError = {
    description = "#onError:Task x a -> (x ->Task y a) ->Task y a\n Recover from a failure in a task. If the given task fails, we use the\ncallback to recover.",
    signature = "onError:Task x a -> (x ->Task y a) ->Task y a"
  } --[[table: 0x41725618]],
  perform = {
    description = "#perform: (x -> msg) -> (a -> msg) ->Task x a ->Cmd msg\n Command the runtime system to perform a task. The most important argument\nis the Task which describes what you want to happen. But you also need to\nprovide functions to tag the two possible outcomes of the task. It can fail or\nsucceed, but either way, you need to have a message to feed back into your\napplication.",
    signature = "perform: (x -> msg) -> (a -> msg) ->Task x a ->Cmd msg"
  } --[[table: 0x417281f0]],
  sequence = {
    description = "#sequence: List (Task x a) ->Task x (List a)\n Start with a list of tasks, and turn them into a single task that returns a\nlist. The tasks will be run in order one-by-one and if any task fails the whole\nsequence fails.",
    signature = "sequence: List (Task x a) ->Task x (List a)"
  } --[[table: 0x41724380]],
  succeed = {
    description = "#succeed: a ->Task x a\n A task that succeeds immediately when run.",
    signature = "succeed: a ->Task x a"
  } --[[table: 0x4171e420]],
  toMaybe = {
    description = "#toMaybe:Task x a ->Task never (Maybe a)\n Translate a task that can fail into a task that can never fail, by\nconverting any failure into Nothing and any success into Just something.",
    signature = "toMaybe:Task x a ->Task never (Maybe a)"
  } --[[table: 0x41726238]],
  toResult = {
    description = "#toResult:Task x a ->Task never (Result x a)\n Translate a task that can fail into a task that can never fail, by\nconverting any failure into Err something and any success into Ok something.",
    signature = "toResult:Task x a ->Task never (Result x a)"
  } --[[table: 0x41727908]]
} --[[table: 0x4171dac0]]