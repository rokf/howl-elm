return {
  Array = {
    description = "#typeArray a\n Representation of fast immutable arrays. You can create arrays of integers\n(Array Int) or strings (Array String) or any other type of value you can\ndream up.",
    signature = "typeArray a"
  } --[[table: 0x4141c3c8]],
  append = {
    description = "#append:Array a ->Array a ->Array a\n Append two arrays to a new one.",
    signature = "append:Array a ->Array a ->Array a"
  } --[[table: 0x4141f5d0]],
  empty = {
    description = "#empty:Array a\n Return an empty array.",
    signature = "empty:Array a"
  } --[[table: 0x4141c710]],
  filter = {
    description = "#filter: (a -> Bool) ->Array a ->Array a\n Keep only elements that satisfy the predicate:",
    signature = "filter: (a -> Bool) ->Array a ->Array a"
  } --[[table: 0x41422288]],
  foldl = {
    description = "#foldl: (a -> b -> b) -> b ->Array a -> b\n Reduce an array from the left. Read foldl as “fold from the left”.",
    signature = "foldl: (a -> b -> b) -> b ->Array a -> b"
  } --[[table: 0x41423b00]],
  foldr = {
    description = "#foldr: (a -> b -> b) -> b ->Array a -> b\n Reduce an array from the right. Read foldr as “fold from the right”.",
    signature = "foldr: (a -> b -> b) -> b ->Array a -> b"
  } --[[table: 0x41423e40]],
  fromList = {
    description = "#fromList: List a ->Array a\n Create an array from a list.",
    signature = "fromList: List a ->Array a"
  } --[[table: 0x4141d4a8]],
  get = {
    description = "#get: Int ->Array a ->Maybe a\n Return Just the element at the index or Nothing if the index is out of range.",
    signature = "get: Int ->Array a ->Maybe a"
  } --[[table: 0x41420960]],
  indexedMap = {
    description = "#indexedMap: (Int -> a -> b) ->Array a ->Array b\n Apply a function on every element with its index as first argument.",
    signature = "indexedMap: (Int -> a -> b) ->Array a ->Array b"
  } --[[table: 0x41421e98]],
  initialize = {
    description = "#initialize: Int -> (Int -> a) ->Array a\n Initialize an array. initialize n f creates an array of length n with\nthe element at index i initialized to the result of (f i).",
    signature = "initialize: Int -> (Int -> a) ->Array a"
  } --[[table: 0x4141d1a8]],
  isEmpty = {
    description = "#isEmpty:Array a -> Bool\n Determine if an array is empty.",
    signature = "isEmpty:Array a -> Bool"
  } --[[table: 0x4141d890]],
  length = {
    description = "#length:Array a -> Int\n Return the length of an array.",
    signature = "length:Array a -> Int"
  } --[[table: 0x4141db08]],
  map = {
    description = "#map: (a -> b) ->Array a ->Array b\n Apply a function on every element in an array.",
    signature = "map: (a -> b) ->Array a ->Array b"
  } --[[table: 0x41421ab0]],
  push = {
    description = "#push: a ->Array a ->Array a\n Push an element to the end of an array.",
    signature = "push: a ->Array a ->Array a"
  } --[[table: 0x4141e200]],
  ["repeat"] = {
    description = "#repeat: Int -> a ->Array a\n Creates an array with a given length, filled with a default element.",
    signature = "repeat: Int -> a ->Array a"
  } --[[table: 0x4141c958]],
  set = {
    description = "#set: Int -> a ->Array a ->Array a\n Set the element at a particular index. Returns an updated array.\nIf the index is out of range, the array is unaltered.",
    signature = "set: Int -> a ->Array a ->Array a"
  } --[[table: 0x41420cc0]],
  slice = {
    description = "#slice: Int -> Int ->Array a ->Array a\n Get a sub-section of an array: (slice start end array). The start is a\nzero-based index where we will start our slice. The end is a zero-based index\nthat indicates the end of the slice. The slice extracts up to but not including\nend.",
    signature = "slice: Int -> Int ->Array a ->Array a"
  } --[[table: 0x414211e8]],
  toIndexedList = {
    description = "#toIndexedList:Array a -> List (Int, a)\n Create an indexed list from an array. Each element of the array will be\npaired with its index.",
    signature = "toIndexedList:Array a -> List (Int, a)"
  } --[[table: 0x41421750]],
  toList = {
    description = "#toList:Array a -> List a\n Create a list of elements from an array.",
    signature = "toList:Array a -> List a"
  } --[[table: 0x414214b0]]
} --[[table: 0x4141bd98]]