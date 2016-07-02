
json = bundle_load('luna')

import execute from howl.io.Process
import config from howl
import command from howl
import BufferPopup from howl.ui

with config
  .define
    name: 'elm_oracle'
    description: 'Whether to use elm-oracle completion'
    default: true
    type_of: 'boolean'
  .define
    name: 'elm-reactor-port'
    description: 'Which port to use for elm-reactor'
    default: 8000
    type_of: 'number'

class ElmCompleter
  complete: (context) =>
    return {} unless config.elm_oracle
    candidates = {}
    title = howl.app.editor.buffer.title
    path = howl.app.editor.buffer.file.parent.path
    o1, o2, o3 = execute(string.format("elm-oracle %s %s", title, context.prefix .. context.suffix), working_directory: path)
    o1_t = json.decode(o1)
    for i,e in pairs(o1_t)
      table.insert(candidates, e.name)
    candidates.authoritive = true
    candidates

howl.completion.register name: 'elm_completer', factory: ElmCompleter

command.register({
  name: 'elm-reactor'
  description: 'Launch elm-reactor'
  handler: () ->
    print('Launching reactor')
})

howl.bindings.push({
  editor:
    ctrl_q: (editor) ->
      if howl.app.editor.buffer.mode.name == "elm"
        howl.command.run 'elm-doc'
      else
        howl.command.run 'show-doc-at-cursor'
})

command.register({
  name: 'elm-doc'
  description: 'Show documentation for current context'
  handler: () ->
    context = howl.app.editor.current_context
    title = howl.app.editor.buffer.title
    path = howl.app.editor.buffer.file.parent.path
    o1, o2, o3 = execute(string.format("elm-oracle %s %s", title, context.prefix .. context.suffix), working_directory: path)
    nodes = json.decode(o1)

    if nodes[1] and nodes[1].comment
      buf = howl.Buffer howl.mode.by_name('markdown')
      buf.text = string.format("# %s\n%s\n# %s",nodes[1].signature,nodes[1].comment, nodes[1].fullName)
      howl.app.editor\show_popup BufferPopup buf
      return
    elseif nodes[1] and nodes[1].error
      buf = howl.Buffer howl.mode.by_name('markdown')
      buf.text = "# Error\n" .. nodes[1].error
      howl.app.editor\show_popup BufferPopup buf
      return

    log.info "No documentation found for '#{context.word}'"
})

mode_reg =
  name: 'elm'
  shebangs: '/elm.*$'
  extensions: 'elm'
  create: bundle_load('elm_mode')

howl.mode.register mode_reg

unload = ->
  howl.mode.unregister 'elm'
  howl.completion.unregister 'elm_completer'
  command.unregister 'elm-reactor'
  command.unregister 'elm-doc'

return {
  info:
    author: 'Rok Fajfar',
    description: 'Elm language support',
    license: 'MIT',
  :unload
}
