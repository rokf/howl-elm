return {
  Dict = {
    description = "#typeDict k v\n A dictionary of keys and values. So a (Dict String User) is a dictionary\nthat lets you look up a String (such as user names) and find the associated\nUser.",
    signature = "typeDict k v"
  } --[[table: 0x402e6ac8]],
  diff = {
    description = "#diff:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v\n Keep a key-value pair when its key does not appear in the second dictionary.",
    signature = "diff:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v"
  } --[[table: 0x402ef850]],
  empty = {
    description = "#empty:Dict k v\n Create an empty dictionary. ",
    signature = "empty:Dict k v"
  } --[[table: 0x402e7168]],
  filter = {
    description = "#filter:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    ->Dict comparable v\n Keep a key-value pair when it satisfies a predicate. ",
    signature = "filter:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    ->Dict comparable v"
  } --[[table: 0x402ee780]],
  foldl = {
    description = "#foldl:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b\n Fold over the key-value pairs in a dictionary, in order from lowest\nkey to highest key.",
    signature = "foldl:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b"
  } --[[table: 0x402edb48]],
  foldr = {
    description = "#foldr:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b\n Fold over the key-value pairs in a dictionary, in order from highest\nkey to lowest key.",
    signature = "foldr:  (comparable -> v -> b -> b)\n    -> b\n    ->Dict comparable v\n    -> b"
  } --[[table: 0x402eded0]],
  fromList = {
    description = "#fromList: List (comparable, v) ->Dict comparable v\n Convert an association list into a dictionary. ",
    signature = "fromList: List (comparable, v) ->Dict comparable v"
  } --[[table: 0x402eba78]],
  get = {
    description = "#get: comparable ->Dict comparable v ->Maybe v\n Get the value associated with a key. If the key is not found, return\nNothing. This is useful when you are not sure if a key will be in the\ndictionary.",
    signature = "get: comparable ->Dict comparable v ->Maybe v"
  } --[[table: 0x402ea8e0]],
  insert = {
    description = "#insert:  comparable\n    -> v\n    ->Dict comparable v\n    ->Dict comparable v\n Insert a key-value pair into a dictionary. Replaces value when there is\na collision. ",
    signature = "insert:  comparable\n    -> v\n    ->Dict comparable v\n    ->Dict comparable v"
  } --[[table: 0x402e77b8]],
  intersect = {
    description = "#intersect:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v\n Keep a key-value pair when its key appears in the second dictionary.\nPreference is given to values in the first dictionary.",
    signature = "intersect:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v"
  } --[[table: 0x402ef370]],
  isEmpty = {
    description = "#isEmpty:Dict k v -> Bool\n Determine if a dictionary is empty.",
    signature = "isEmpty:Dict k v -> Bool"
  } --[[table: 0x402e8498]],
  keys = {
    description = "#keys:Dict comparable v -> List comparable\n Get all of the keys in a dictionary, sorted from lowest to highest.",
    signature = "keys:Dict comparable v -> List comparable"
  } --[[table: 0x402eb260]],
  map = {
    description = "#map:  (comparable -> a -> b)\n    ->Dict comparable a\n    ->Dict comparable b\n Apply a function to all values in a dictionary.",
    signature = "map:  (comparable -> a -> b)\n    ->Dict comparable a\n    ->Dict comparable b"
  } --[[table: 0x402ec4f8]],
  member = {
    description = "#member: comparable ->Dict comparable v -> Bool\n Determine if a key is in a dictionary. ",
    signature = "member: comparable ->Dict comparable v -> Bool"
  } --[[table: 0x402ea440]],
  merge = {
    description = "#merge:  (comparable -> a -> result -> result)\n    -> (comparable -> a -> b -> result -> result)\n    -> (comparable -> b -> result -> result)\n    ->Dict comparable a\n    ->Dict comparable b\n    -> result\n    -> result\n The most general way of combining two dictionaries. You provide three\naccumulators for when a given key appears:",
    signature = "merge:  (comparable -> a -> result -> result)\n    -> (comparable -> a -> b -> result -> result)\n    -> (comparable -> b -> result -> result)\n    ->Dict comparable a\n    ->Dict comparable b\n    -> result\n    -> result"
  } --[[table: 0x402eff30]],
  partition = {
    description = "#partition:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    -> (Dict comparable v, Dict comparable v)\n Partition a dictionary according to a predicate. The first dictionary\ncontains all key-value pairs which satisfy the predicate, and the second\ncontains the rest.",
    signature = "partition:  (comparable -> v -> Bool)\n    ->Dict comparable v\n    -> (Dict comparable v, Dict comparable v)"
  } --[[table: 0x402eec70]],
  remove = {
    description = "#remove: comparable ->Dict comparable v ->Dict comparable v\n Remove a key-value pair from a dictionary. If the key is not found,\nno changes are made. ",
    signature = "remove: comparable ->Dict comparable v ->Dict comparable v"
  } --[[table: 0x402e8118]],
  singleton = {
    description = "#singleton: comparable -> v ->Dict comparable v\n Create a dictionary with one key-value pair. ",
    signature = "singleton: comparable -> v ->Dict comparable v"
  } --[[table: 0x402e73e8]],
  size = {
    description = "#size:Dict k v -> Int\n Determine the number of key-value pairs in the dictionary. ",
    signature = "size:Dict k v -> Int"
  } --[[table: 0x402eac60]],
  toList = {
    description = "#toList:Dict comparable v -> List (comparable, v)\n Convert a dictionary into an association list of key-value pairs, sorted by keys. ",
    signature = "toList:Dict comparable v -> List (comparable, v)"
  } --[[table: 0x402eb7d8]],
  union = {
    description = "#union:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v\n Combine two dictionaries. If there is a collision, preference is given\nto the first dictionary.",
    signature = "union:Dict comparable v\n    ->Dict comparable v\n    ->Dict comparable v"
  } --[[table: 0x402ef018]],
  update = {
    description = "#update:  comparable\n    -> (Maybe v ->Maybe v)\n    ->Dict comparable v\n    ->Dict comparable v\n Update the value of a dictionary for a specific key with a given function. ",
    signature = "update:  comparable\n    -> (Maybe v ->Maybe v)\n    ->Dict comparable v\n    ->Dict comparable v"
  } --[[table: 0x402e7c10]],
  values = {
    description = "#values:Dict comparable v -> List v\n Get all of the values in a dictionary, in the order of their keys.",
    signature = "values:Dict comparable v -> List v"
  } --[[table: 0x402eb598]]
} --[[table: 0x402e64c8]]