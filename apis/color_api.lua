return {
  Color = {
    description = "#typeColor\n Representation of colors.",
    signature = "typeColor"
  } --[[table: 0x40a258f8]],
  Gradient = {
    description = "#typeGradient\n Abstract representation of a color gradient.",
    signature = "typeGradient"
  } --[[table: 0x40a29508]],
  black = {
    description = "#black:Color\n",
    signature = "black:Color"
  } --[[table: 0x40a33e88]],
  blue = {
    description = "#blue:Color\n",
    signature = "blue:Color"
  } --[[table: 0x40a2e8a0]],
  brown = {
    description = "#brown:Color\n",
    signature = "brown:Color"
  } --[[table: 0x40a2ed80]],
  charcoal = {
    description = "#charcoal:Color\n",
    signature = "charcoal:Color"
  } --[[table: 0x40a33980]],
  complement = {
    description = "#complement:Color->Color\n Produce a “complementary color”. The two colors will\naccent each other. This is the same as rotating the hue by 180°.",
    signature = "complement:Color->Color"
  } --[[table: 0x40a28180]],
  darkBlue = {
    description = "#darkBlue:Color\n",
    signature = "darkBlue:Color"
  } --[[table: 0x40a30f38]],
  darkBrown = {
    description = "#darkBrown:Color\n",
    signature = "darkBrown:Color"
  } --[[table: 0x40a31a58]],
  darkCharcoal = {
    description = "#darkCharcoal:Color\n",
    signature = "darkCharcoal:Color"
  } --[[table: 0x40a33c10]],
  darkGray = {
    description = "#darkGray:Color\n",
    signature = "darkGray:Color"
  } --[[table: 0x40a34600]],
  darkGreen = {
    description = "#darkGreen:Color\n",
    signature = "darkGreen:Color"
  } --[[table: 0x40a30cb0]],
  darkGrey = {
    description = "#darkGrey:Color\n",
    signature = "darkGrey:Color"
  } --[[table: 0x40a33468]],
  darkOrange = {
    description = "#darkOrange:Color\n",
    signature = "darkOrange:Color"
  } --[[table: 0x40a30798]],
  darkPurple = {
    description = "#darkPurple:Color\n",
    signature = "darkPurple:Color"
  } --[[table: 0x40a311c8]],
  darkRed = {
    description = "#darkRed:Color\n",
    signature = "darkRed:Color"
  } --[[table: 0x40a30510]],
  darkYellow = {
    description = "#darkYellow:Color\n",
    signature = "darkYellow:Color"
  } --[[table: 0x40a30a28]],
  gray = {
    description = "#gray:Color\n",
    signature = "gray:Color"
  } --[[table: 0x40a34380]],
  grayscale = {
    description = "#grayscale: Float ->Color\n Produce a gray based on the input. 0 is white, 1 is black.",
    signature = "grayscale: Float ->Color"
  } --[[table: 0x40a27638]],
  green = {
    description = "#green:Color\n",
    signature = "green:Color"
  } --[[table: 0x40a2e670]],
  grey = {
    description = "#grey:Color\n",
    signature = "grey:Color"
  } --[[table: 0x40a331e8]],
  greyscale = {
    description = "#greyscale: Float ->Color\n Produce a gray based on the input. 0 is white, 1 is black.",
    signature = "greyscale: Float ->Color"
  } --[[table: 0x40a27390]],
  hsl = {
    description = "#hsl: Float -> Float -> Float ->Color\n Create HSL colors. This gives\nyou access to colors more like a color wheel, where all hues are arranged in a\ncircle that you specify with standard Elm angles (radians).",
    signature = "hsl: Float -> Float -> Float ->Color"
  } --[[table: 0x40a263b0]],
  hsla = {
    description = "#hsla: Float -> Float -> Float -> Float ->Color\n Create HSL colors\nwith an alpha component for transparency.",
    signature = "hsla: Float -> Float -> Float -> Float ->Color"
  } --[[table: 0x40a27010]],
  lightBlue = {
    description = "#lightBlue:Color\n",
    signature = "lightBlue:Color"
  } --[[table: 0x40a2fd70]],
  lightBrown = {
    description = "#lightBrown:Color\n",
    signature = "lightBrown:Color"
  } --[[table: 0x40a30290]],
  lightCharcoal = {
    description = "#lightCharcoal:Color\n",
    signature = "lightCharcoal:Color"
  } --[[table: 0x40a336f8]],
  lightGray = {
    description = "#lightGray:Color\n",
    signature = "lightGray:Color"
  } --[[table: 0x40a34108]],
  lightGreen = {
    description = "#lightGreen:Color\n",
    signature = "lightGreen:Color"
  } --[[table: 0x40a2fae8]],
  lightGrey = {
    description = "#lightGrey:Color\n",
    signature = "lightGrey:Color"
  } --[[table: 0x40a32f70]],
  lightOrange = {
    description = "#lightOrange:Color\n",
    signature = "lightOrange:Color"
  } --[[table: 0x40a2f4d0]],
  lightPurple = {
    description = "#lightPurple:Color\n",
    signature = "lightPurple:Color"
  } --[[table: 0x40a30000]],
  lightRed = {
    description = "#lightRed:Color\n",
    signature = "lightRed:Color"
  } --[[table: 0x40a2f240]],
  lightYellow = {
    description = "#lightYellow:Color\n",
    signature = "lightYellow:Color"
  } --[[table: 0x40a2f760]],
  linear = {
    description = "#linear:  (Float, Float)\n    -> (Float, Float)\n    -> List (Float, Color)\n    ->Gradient\n Create a linear gradient. Takes a start and end point and then a series of\n“color stops” that indicate how to interpolate between the start and\nend points. See this example for a\nmore visual explanation.",
    signature = "linear:  (Float, Float)\n    -> (Float, Float)\n    -> List (Float, Color)\n    ->Gradient"
  } --[[table: 0x40a2b988]],
  orange = {
    description = "#orange:Color\n",
    signature = "orange:Color"
  } --[[table: 0x40a2e190]],
  purple = {
    description = "#purple:Color\n",
    signature = "purple:Color"
  } --[[table: 0x40a2eb10]],
  radial = {
    description = "#radial:  (Float, Float)\n    -> Float\n    -> (Float, Float)\n    -> Float\n    -> List (Float, Color)\n    ->Gradient\n Create a radial gradient. First takes a start point and inner radius.  Then\ntakes an end point and outer radius. It then takes a series of “color\nstops” that indicate how to interpolate between the inner and outer\ncircles. See this example for a\nmore visual explanation.",
    signature = "radial:  (Float, Float)\n    -> Float\n    -> (Float, Float)\n    -> Float\n    -> List (Float, Color)\n    ->Gradient"
  } --[[table: 0x40a2bd28]],
  red = {
    description = "#red:Color\n",
    signature = "red:Color"
  } --[[table: 0x40a2d3d0]],
  rgb = {
    description = "#rgb: Int -> Int -> Int ->Color\n Create RGB colors from numbers between 0 and 255 inclusive. ",
    signature = "rgb: Int -> Int -> Int ->Color"
  } --[[table: 0x40a25c28]],
  rgba = {
    description = "#rgba: Int -> Int -> Int -> Float ->Color\n Create RGB colors with an alpha component for transparency.\nThe alpha component is specified with numbers between 0 and 1. ",
    signature = "rgba: Int -> Int -> Int -> Float ->Color"
  } --[[table: 0x40a25f68]],
  toHsl = {
    description = "#toHsl:Color-> { hue : Float, saturation : Float, lightness : Float, alpha : Float }\n Extract the components of a color in the HSL format.",
    signature = "toHsl:Color-> { hue : Float, saturation : Float, lightness : Float, alpha : Float }"
  } --[[table: 0x40a2d0c0]],
  toRgb = {
    description = "#toRgb:Color-> { red : Int, green : Int, blue : Int, alpha : Float }\n Extract the components of a color in the RGB format.",
    signature = "toRgb:Color-> { red : Int, green : Int, blue : Int, alpha : Float }"
  } --[[table: 0x40a2c998]],
  white = {
    description = "#white:Color\n",
    signature = "white:Color"
  } --[[table: 0x40a32cf0]],
  yellow = {
    description = "#yellow:Color\n",
    signature = "yellow:Color"
  } --[[table: 0x40a2e400]]
} --[[table: 0x40a24850]]