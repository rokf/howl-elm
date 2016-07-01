return {
  ["and"] = {
    description = "#and: Int -> Int -> Int\n Bitwise AND",
    signature = "and: Int -> Int -> Int"
  } --[[table: 0x4161eae0]],
  complement = {
    description = "#complement: Int -> Int\n Flip each bit individually, often called bitwise NOT",
    signature = "complement: Int -> Int"
  } --[[table: 0x4161f468]],
  ["or"] = {
    description = "#or: Int -> Int -> Int\n Bitwise OR",
    signature = "or: Int -> Int -> Int"
  } --[[table: 0x4161ee18]],
  shiftLeft = {
    description = "#shiftLeft: Int -> Int -> Int\n Shift bits to the left by a given offset, filling new bits with zeros.\nThis can be used to multiply numbers by powers of two.",
    signature = "shiftLeft: Int -> Int -> Int"
  } --[[table: 0x4161f708]],
  shiftRight = {
    description = "#shiftRight: Int -> Int -> Int\n Shift bits to the right by a given offset, filling new bits with\nwhatever is the topmost bit. This can be used to divide numbers by powers of two.",
    signature = "shiftRight: Int -> Int -> Int"
  } --[[table: 0x4161fb60]],
  shiftRightLogical = {
    description = "#shiftRightLogical: Int -> Int -> Int\n Shift bits to the right by a given offset, filling new bits with\nzeros.",
    signature = "shiftRightLogical: Int -> Int -> Int"
  } --[[table: 0x4161fe80]],
  xor = {
    description = "#xor: Int -> Int -> Int\n Bitwise XOR",
    signature = "xor: Int -> Int -> Int"
  } --[[table: 0x4161f078]]
} --[[table: 0x4161e5b0]]