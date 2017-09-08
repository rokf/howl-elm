class ElmMode
  new: =>
    @lexer = bundle_load 'elm_lexer'
    @completers = {'elm_completer', 'in_buffer'}

  comment_syntax: '--'

  default_config:
    complete: 'manual'

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
