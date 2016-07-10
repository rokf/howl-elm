
json = bundle_load('luna')

import execute from howl.io.Process
import Process from howl.io
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
    name: 'elm_reactor_port'
    description: 'Which port to use for elm-reactor'
    default: 8000
    type_of: 'number'
  .define
    name: 'elm_reactor_address'
    description: 'The address to use for elm-reactor'
    default: "localhost"
    type_of: 'string'
  .define
    name: 'elm_make_main_file'
    description: 'The main file to use for elm-make'
    default: 'Main.elm'
    type_of: 'string'

class ElmCompleter
  complete: (context) =>
    return {} unless config.elm_oracle
    candidates = {}
    title = howl.app.editor.buffer.title
    path = howl.app.editor.buffer.file.parent.path
    proj = howl.Project.for_file(howl.app.editor.buffer.file)
    if proj == nil
      return {}
    file_path = howl.app.editor.buffer.file.path
    path_no_root = string.sub(file_path, #proj.root.path + 2, #file_path)
    useful = {}
    for item in string.gmatch(context.prefix, "[%w%.]+")
      table.insert(useful, item)
    o1, o2, o3 = execute(string.format("elm-oracle %s %s", path_no_root, useful[#useful]), working_directory: proj.root.path)
    o1_t = json.decode(o1)
    for i,e in pairs(o1_t)
      table.insert(candidates, e.name)
    candidates.authoritive = true
    candidates

howl.completion.register name: 'elm_completer', factory: ElmCompleter

make_handler = () ->
  print('ran elm-make handler')
  proj = howl.Project.for_file(howl.app.editor.buffer.file)
  if proj == nil
    return
  make_process = Process({
    cmd: string.format("elm-make %s --output=elm.js", config.elm_make_main_file)
    working_directory: proj.root.path
  })
command.register({
  name: 'elm-make'
  description: 'Run elm-make and generate a JavaScript file'
  handler: make_handler
})

local proc
reactor_handler = () ->
  proj = howl.Project.for_file(howl.app.editor.buffer.file)
  if proj == nil
    return
  if proc == nil
    proc = Process({
      cmd: "elm-reactor"
      working_directory: proj.root.path
    })
    combined_url = config.elm_reactor_address .. ':' .. config.elm_reactor_port
    howl.clipboard.push(combined_url)
    log.info 'elm-reactor active on ' .. combined_url
  else
    proc\send_signal 9 -- TODO
    proc\wait!
    if proc.exited
      log.info 'elm-reactor stopped'
      proc = nil
    else
      log.warn 'elm-reactor remains open for some reason'

command.register({
  name: 'elm-reactor'
  description: 'Launch elm-reactor'
  handler: reactor_handler
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
    proj = howl.Project.for_file(howl.app.editor.buffer.file)
    if proj == nil
      return
    file_path = howl.app.editor.buffer.file.path
    path_no_root = string.sub(file_path, #proj.root.path + 2, #file_path)
    useful = {}
    for item in string.gmatch(context.prefix, "[%w%.]+")
      table.insert(useful, item)
    o1, o2, o3 = execute(string.format("elm-oracle %s %s", path_no_root, useful[#useful]), working_directory: proj.root.path)
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
  command.unregister 'elm-make'

return {
  info:
    author: 'Rok Fajfar',
    description: 'Elm language support',
    license: 'MIT',
  :unload
}
