
json = bundle_load('luna')

import execute from howl.io.Process
import config from howl

with config
  .define
    name: 'elm_oracle'
    description: 'Whether to use elm-oracle completion'
    default: true
    type_of: 'boolean'

class ElmCompleter
  complete: (context) =>
    return {} unless config.elm_oracle
    candidates = {}
    title = howl.app.editor.buffer.title
    path = howl.app.editor.buffer.file.parent.path
    o1, o2, o3 = execute(string.format("elm-oracle %s %s", title, context.prefix .. context.suffix), working_directory: path)
    print(o1)
    o1_t = json.decode(o1)
    for i,e in pairs(o1_t)
      table.insert(candidates, e.name)
    candidates.authoritive = true
    candidates

howl.completion.register name: 'elm_completer', factory: ElmCompleter

mode_reg =
  name: 'elm'
  shebangs: '/elm.*$'
  extensions: 'elm'
  create: bundle_load('elm_mode')

howl.mode.register mode_reg

unload = ->
  howl.mode.unregister 'elm'
  howl.completion.unregister 'elm_completer'

return {
  info:
    author: 'Rok Fajfar',
    description: 'Elm language support',
    license: 'MIT',
  :unload
}
