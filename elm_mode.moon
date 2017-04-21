import style from howl.ui

style.define 'longstring', 'string'

class ElmMode
  new: =>
    @lexer = bundle_load 'elm_lexer'
    @completers = {'elm_completer', 'in_buffer'}

  comment_syntax: '--'

  default_config:
    complete: 'manual'
    -- word_pattern: '[%w%.]+'

  auto_pairs: {
    '(': ')'
    '[': ']'
    '{': '}'
    '"': '"'
  }

  indentation: {
    more_after: {
      r'[({=]\\s*(--.*|)$' -- hanging operators
      r'\\b(then)\\b\\s*(--.*|)$', -- block starters
      r'\\b(of)\\b\\s*(--.*|)$',
      r'^\\s*else\\b',
    }

    less_for: {
      '^%s*}'
      r'^\\s*else\\b'
      r'^\\s*\\}\\b'
    }
  }
