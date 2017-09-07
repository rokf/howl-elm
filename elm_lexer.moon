
howl.util.lpeg_lexer ->
  keyword = capture 'keyword', word({
   'as', 'alias', 'and', 'case', 'else',
   'exposing',   'if', 'in', 'infixr', 'import',
   'let', 'module', 'not', 'of', 'or',
   'port', 'then', 'type', 'var', 'where'
  }) * -#P("'")

  comment = capture 'comment', any {
    '--' * scan_until eol -- single line comment
    '{-' * scan_to('-}')^-1 -- multiline comment
  }

  string = capture 'string', any { -- order important because PEG
    span('"""', '"""', P'\\') -- multiline string
    span('"', '"', P'\\') -- single line string
  }

  char = capture 'char', word(P"'" * P(1) * P"'")

  operator = capture 'operator', S'&+-*!/%^~=<>;:,.(){}[]|\\'

  hexadecimal_number =  P'0' * S'xX' * xdigit^1 * (P'.' * xdigit^1)^0 * (S'pP' * S'-+'^0 * xdigit^1)^0

  float = digit^0 * P'.' * digit^1

  number = capture 'number', any {
    hexadecimal_number * any('LL', 'll', 'ULL', 'ull')^-1,
    digit^1 * any { 'LL', 'll', 'ULL', 'ull' },
    (float + digit^1) * (S'eE' * P('-')^0 * digit^1)^0
  }

  type = capture 'type', word(upper * (upper + lower + digit)^0)

  any {
    number
    string
    char
    comment
    operator
    keyword
    type
  }
