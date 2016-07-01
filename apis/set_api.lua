return {
  Set = {
    description = "#typeSet t\n Represents a set of unique values. So (Set Int) is a set of integers and\n(Set String) is a set of strings.",
    signature = "typeSet t"
  } --[[table: 0x415d8ff8]],
  diff = {
    description = "#diff:Set comparable ->Set comparable ->Set comparable\n Get the difference between the first set and the second. Keeps values\nthat do not appear in the second set.",
    signature = "diff:Set comparable ->Set comparable ->Set comparable"
  } --[[table: 0x41311900]],
  empty = {
    description = "#empty:Set a\n Create an empty set.",
    signature = "empty:Set a"
  } --[[table: 0x415d9308]],
  filter = {
    description = "#filter:  (comparable -> Bool)\n    ->Set comparable\n    ->Set comparable\n Create a new set consisting only of elements which satisfy a predicate.",
    signature = "filter:  (comparable -> Bool)\n    ->Set comparable\n    ->Set comparable"
  } --[[table: 0x412f4c50]],
  foldl = {
    description = "#foldl: (comparable -> b -> b) -> b ->Set comparable -> b\n Fold over the values in a set, in order from lowest to highest.",
    signature = "foldl: (comparable -> b -> b) -> b ->Set comparable -> b"
  } --[[table: 0x415db300]],
  foldr = {
    description = "#foldr: (comparable -> b -> b) -> b ->Set comparable -> b\n Fold over the values in a set, in order from highest to lowest.",
    signature = "foldr: (comparable -> b -> b) -> b ->Set comparable -> b"
  } --[[table: 0x412f46b8]],
  fromList = {
    description = "#fromList: List comparable ->Set comparable\n Convert a list into a set, removing any duplicates.",
    signature = "fromList: List comparable ->Set comparable"
  } --[[table: 0x415daad0]],
  insert = {
    description = "#insert: comparable ->Set comparable ->Set comparable\n Insert a value into a set.",
    signature = "insert: comparable ->Set comparable ->Set comparable"
  } --[[table: 0x415d9b20]],
  intersect = {
    description = "#intersect:Set comparable ->Set comparable ->Set comparable\n Get the intersection of two sets. Keeps values that appear in both sets.",
    signature = "intersect:Set comparable ->Set comparable ->Set comparable"
  } --[[table: 0x41311670]],
  isEmpty = {
    description = "#isEmpty:Set a -> Bool\n Determine if a set is empty.",
    signature = "isEmpty:Set a -> Bool"
  } --[[table: 0x415da460]],
  map = {
    description = "#map:  (comparable -> comparable')\n    ->Set comparable\n    ->Set comparable'\n Map a function onto a set, creating a new set with no duplicates.",
    signature = "map:  (comparable -> comparable')\n    ->Set comparable\n    ->Set comparable'"
  } --[[table: 0x415daed8]],
  member = {
    description = "#member: comparable ->Set comparable -> Bool\n Determine if a value is in a set.",
    signature = "member: comparable ->Set comparable -> Bool"
  } --[[table: 0x415dc4e0]],
  partition = {
    description = "#partition:  (comparable -> Bool)\n    ->Set comparable\n    -> (Set comparable, Set comparable)\n Create two new sets; the first consisting of elements which satisfy a\npredicate, the second consisting of elements which do not.",
    signature = "partition:  (comparable -> Bool)\n    ->Set comparable\n    -> (Set comparable, Set comparable)"
  } --[[table: 0x412f5ed0]],
  remove = {
    description = "#remove: comparable ->Set comparable ->Set comparable\n Remove a value from a set. If the value is not found, no changes are made.",
    signature = "remove: comparable ->Set comparable ->Set comparable"
  } --[[table: 0x415da0d0]],
  singleton = {
    description = "#singleton: comparable ->Set comparable\n Create a set with one value.",
    signature = "singleton: comparable ->Set comparable"
  } --[[table: 0x415d9568]],
  size = {
    description = "#size:Set a -> Int\n Determine the number of elements in a set.",
    signature = "size:Set a -> Int"
  } --[[table: 0x415dc7a0]],
  toList = {
    description = "#toList:Set comparable -> List comparable\n Convert a set into a list, sorted from lowest to highest.",
    signature = "toList:Set comparable -> List comparable"
  } --[[table: 0x415da7b0]],
  union = {
    description = "#union:Set comparable ->Set comparable ->Set comparable\n Get the union of two sets. Keep all values.",
    signature = "union:Set comparable ->Set comparable ->Set comparable"
  } --[[table: 0x415d6508]]
} --[[table: 0x415d88a0]]