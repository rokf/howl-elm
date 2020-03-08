class ElmMode
  new: =>
    @lexer = bundle_load 'elm_lexer'
    @completers = {'in_buffer'}

  comment_syntax: '--'

  auto_pairs:
    '(': ')'
    '[': ']'
    '{': '}'
    '"': '"'

  indentation: {
    more_after: {
      r'\\b(let|in|of|then|else)\\b\\s*(.*)$'
      '=%s*(--.*)$'
    }
  }
