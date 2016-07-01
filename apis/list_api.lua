return {
  all = {
    description = "#all: (a -> Bool) -> List a -> Bool\n Determine if all elements satisfy the predicate.",
    signature = "all: (a -> Bool) -> List a -> Bool"
  } --[[table: 0x41c4d050]],
  any = {
    description = "#any: (a -> Bool) -> List a -> Bool\n Determine if any elements satisfy the predicate.",
    signature = "any: (a -> Bool) -> List a -> Bool"
  } --[[table: 0x41c4d380]],
  append = {
    description = "#append: List a -> List a -> List a\n Put two lists together.",
    signature = "append: List a -> List a -> List a"
  } --[[table: 0x40630f20]],
  concat = {
    description = "#concat: List (List a) -> List a\n Concatenate a bunch of lists into a single list:",
    signature = "concat: List (List a) -> List a"
  } --[[table: 0x406311a0]],
  concatMap = {
    description = "#concatMap: (a -> List b) -> List a -> List b\n Map a given function onto a list and flatten the resulting lists.",
    signature = "concatMap: (a -> List b) -> List a -> List b"
  } --[[table: 0x41c4b6e0]],
  drop = {
    description = "#drop: Int -> List a -> List a\n Drop the first n members of a list.",
    signature = "drop: Int -> List a -> List a"
  } --[[table: 0x406304c8]],
  filter = {
    description = "#filter: (a -> Bool) -> List a -> List a\n Keep only elements that satisfy the predicate.",
    signature = "filter: (a -> Bool) -> List a -> List a"
  } --[[table: 0x4062de90]],
  filterMap = {
    description = "#filterMap: (a ->Maybe b) -> List a -> List b\n Apply a function that may succeed to all values in the list, but only keep\nthe successes.",
    signature = "filterMap: (a ->Maybe b) -> List a -> List b"
  } --[[table: 0x41c4b360]],
  foldl = {
    description = "#foldl: (a -> b -> b) -> b -> List a -> b\n Reduce a list from the left.",
    signature = "foldl: (a -> b -> b) -> b -> List a -> b"
  } --[[table: 0x41c4c170]],
  foldr = {
    description = "#foldr: (a -> b -> b) -> b -> List a -> b\n Reduce a list from the right.",
    signature = "foldr: (a -> b -> b) -> b -> List a -> b"
  } --[[table: 0x41c4be40]],
  head = {
    description = "#head: List a ->Maybe a\n Extract the first element of a list.",
    signature = "head: List a ->Maybe a"
  } --[[table: 0x40630988]],
  indexedMap = {
    description = "#indexedMap: (Int -> a -> b) -> List a -> List b\n Same as map but the function is also applied to the index of each\nelement (starting at zero).",
    signature = "indexedMap: (Int -> a -> b) -> List a -> List b"
  } --[[table: 0x41c4bad0]],
  intersperse = {
    description = "#intersperse: a -> List a -> List a\n Places the given value between all members of the given list.",
    signature = "intersperse: a -> List a -> List a"
  } --[[table: 0x41c40490]],
  isEmpty = {
    description = "#isEmpty: List a -> Bool\n Determine if a list is empty.",
    signature = "isEmpty: List a -> Bool"
  } --[[table: 0x4062fa20]],
  length = {
    description = "#length: List a -> Int\n Determine the length of a list.",
    signature = "length: List a -> Int"
  } --[[table: 0x4062fd68]],
  map = {
    description = "#map: (a -> b) -> List a -> List b\n Apply a function to every element of a list.",
    signature = "map: (a -> b) -> List a -> List b"
  } --[[table: 0x41c47d90]],
  map2 = {
    description = "#map2: (a -> b -> result) -> List a -> List b -> List result\n Combine two lists, combining them with the given function.\nIf one list is longer, the extra elements are dropped.",
    signature = "map2: (a -> b -> result) -> List a -> List b -> List result"
  } --[[table: 0x41c480d8]],
  map3 = {
    description = "#map3:  (a -> b -> c -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List result\n",
    signature = "map3:  (a -> b -> c -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List result"
  } --[[table: 0x41c486b8]],
  map4 = {
    description = "#map4:  (a -> b -> c -> d -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List result\n",
    signature = "map4:  (a -> b -> c -> d -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List result"
  } --[[table: 0x41c49990]],
  map5 = {
    description = "#map5:  (a -> b -> c -> d -> e -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List e\n    -> List result\n",
    signature = "map5:  (a -> b -> c -> d -> e -> result)\n    -> List a\n    -> List b\n    -> List c\n    -> List d\n    -> List e\n    -> List result"
  } --[[table: 0x4062fdc8]],
  maximum = {
    description = "#maximum: List comparable ->Maybe comparable\n Find the maximum element in a non-empty list.",
    signature = "maximum: List comparable ->Maybe comparable"
  } --[[table: 0x41c4ca10]],
  member = {
    description = "#member: a -> List a -> Bool\n Figure out whether a list contains a value.",
    signature = "member: a -> List a -> Bool"
  } --[[table: 0x40630700]],
  minimum = {
    description = "#minimum: List comparable ->Maybe comparable\n Find the minimum element in a non-empty list.",
    signature = "minimum: List comparable ->Maybe comparable"
  } --[[table: 0x41c4cd18]],
  partition = {
    description = "#partition: (a -> Bool) -> List a -> (List a, List a)\n Partition a list based on a predicate. The first list contains all values\nthat satisfy the predicate, and the second list contains all the value that do\nnot.",
    signature = "partition: (a -> Bool) -> List a -> (List a, List a)"
  } --[[table: 0x41c461d0]],
  product = {
    description = "#product: List number -> number\n Get the product of the list elements.",
    signature = "product: List number -> number"
  } --[[table: 0x41c4c720]],
  ["repeat"] = {
    description = "#repeat: Int -> a -> List a\n Create a list with n copies of a value:",
    signature = "repeat: Int -> a -> List a"
  } --[[table: 0x4062f330]],
  reverse = {
    description = "#reverse: List a -> List a\n Reverse a list.",
    signature = "reverse: List a -> List a"
  } --[[table: 0x40630060]],
  scanl = {
    description = "#scanl: (a -> b -> b) -> b -> List a -> List b\n Reduce a list from the left, building up all of the intermediate results into a list.",
    signature = "scanl: (a -> b -> b) -> b -> List a -> List b"
  } --[[table: 0x41c4d6b8]],
  sort = {
    description = "#sort: List comparable -> List comparable\n Sort values from lowest to highest",
    signature = "sort: List comparable -> List comparable"
  } --[[table: 0x41c4d9e0]],
  sortBy = {
    description = "#sortBy: (a -> comparable) -> List a -> List a\n Sort values by a derived property.",
    signature = "sortBy: (a -> comparable) -> List a -> List a"
  } --[[table: 0x41c48390]],
  sortWith = {
    description = "#sortWith: (a -> a ->Order) -> List a -> List a\n Sort values with a custom comparison function.",
    signature = "sortWith: (a -> a ->Order) -> List a -> List a"
  } --[[table: 0x41c4e358]],
  sum = {
    description = "#sum: List number -> number\n Get the sum of the list elements.",
    signature = "sum: List number -> number"
  } --[[table: 0x41c4c448]],
  tail = {
    description = "#tail: List a ->Maybe (List a)\n Extract the rest of the list.",
    signature = "tail: List a ->Maybe (List a)"
  } --[[table: 0x40630d70]],
  take = {
    description = "#take: Int -> List a -> List a\n Take the first n members of a list.",
    signature = "take: Int -> List a -> List a"
  } --[[table: 0x4062f570]],
  unzip = {
    description = "#unzip: List (a, b) -> (List a, List b)\n Decompose a list of tuples into a tuple of lists.",
    signature = "unzip: List (a, b) -> (List a, List b)"
  } --[[table: 0x41c46540]]
} --[[table: 0x4062f148]]