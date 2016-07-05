
howl.aux.lpeg_lexer ->
  c = capture

  keyword = c 'keyword', word {
   'as', 'alias', 'and', 'case', 'else',
   'exposing',   'if', 'in', 'infixr', 'import',
   'let', 'module', 'not', 'of', 'or',
   'port', 'then', 'type', 'var', 'where'
  }

  bracket_quote_lvl_start = P'[' * Cg(P('=')^0, 'lvl') * '['
  bracket_quote_lvl_end = ']' * match_back('lvl') * ']'
  bracket_quote =  bracket_quote_lvl_start * scan_to(bracket_quote_lvl_end)^-1

  comment = c 'comment', '--' * any {
    bracket_quote,
    scan_until eol,
  }

  block_comment = c 'comment', '{-' * scan_to('-}')^-1

  sq_string = span("'", "'", '\\')
  dq_string = span('"', '"', P'\\')

  string = c 'string', any {
    dq_string,
    bracket_quote
  }

  char = c 'char', any {
    sq_string,
  }

  operator = c 'operator', S'&+-*!/%^~=<>;:,.(){}[]|\\'

  hexadecimal_number =  P'0' * S'xX' * xdigit^1 * (P'.' * xdigit^1)^0 * (S'pP' * S'-+'^0 * xdigit^1)^0

  float = digit^0 * P'.' * digit^1

  number = c 'number', any({
    hexadecimal_number * any('LL', 'll', 'ULL', 'ull')^-1,
    digit^1 * any { 'LL', 'll', 'ULL', 'ull' },
    (float + digit^1) * (S'eE' * P('-')^0 * digit^1)^0
  })

  ident = (alpha + '_')^1 * (alpha + digit + '_')^0
  identifier = c 'identifier', ident
  -- constant = c 'constant', upper^1 * any(upper, '_', digit)^0 * any(eol, -#lower)

  ws = c 'whitespace', blank^0

  type = c 'type', any {
    upper^1 * (lower + digit)^1
  }

  any {
    number,
    string,
    char,
    comment,
    block_comment,
    operator,
    keyword,
    type,
    identifier,
  }
