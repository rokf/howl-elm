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
      '=%s*(--.*)$'
      'let%s*(--.*)$'
      'in%s*(--.*)$'
      'of%s*(--.*)$'
      'then%s*(--.*)$'
      'else%s*(--.*)$'
    }
    less_for: {
      '^%s*}'
    }
  }
