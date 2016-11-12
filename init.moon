json = bundle_load "luna"
requests = require "requests"

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
  .define
    name: 'elm_oracle_path'
    description: 'Location to elm-oracle, can be the name itself if in PATH'
    default: 'elm-oracle'
    type_of: 'string'

class ElmCompleter
  complete: (context) =>
    return {} unless config.elm_oracle
    candidates = {}
    -- path = howl.app.editor.buffer.file.parent.path
    proj = howl.Project.for_file(howl.app.editor.buffer.file)
    if proj == nil
      return {}
    file_path = howl.app.editor.buffer.file.path
    path_no_root = string.sub(file_path, #proj.root.path + 2, #file_path)
    useful = {}
    for item in string.gmatch(context.prefix, "[%w%.]+")
      table.insert(useful, item)
    full_command = string.format("%s %s %s", config.elm_oracle_path, path_no_root, useful[#useful])
    print(full_command)
    o1, _, _ = execute(full_command, working_directory: proj.root.path)
    o1_t = json.decode(o1)
    for i,e in pairs(o1_t)
      table.insert(candidates, e.name)
    -- candidates.authoritive = true
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
    read_stdout: true
    read_stderr: true
  })
  response_error_text = make_process.stderr\read_all!
  response_text = make_process.stdout\read_all!
  buf = howl.Buffer howl.mode.by_name('default')
  buf.text = string.format("%s\n\n%s", response_error_text, response_text)
  howl.app.editor\show_popup BufferPopup buf

command.register({
  name: 'elm-make'
  description: 'Run elm-make and generate a JavaScript file'
  handler: make_handler
})

set_main_handler = () ->
  proj = howl.Project.for_file(howl.app.editor.buffer.file)
  if proj == nil
    print 'Could not find active project, abort.'
    return
  file_path = howl.app.editor.buffer.file.path
  path_no_root = string.sub(file_path, #proj.root.path + 2, #file_path)
  config.elm_make_main_file = path_no_root
  log.info ('Successfully set new main file to ' .. path_no_root)

command.register({
  name: 'elm-set-main'
  description: 'Set current file as the main file of the project (config.elm_make_main_file)'
  handler: set_main_handler
})

package_input = () -> -- input function
  items = {}
  res = requests.get('http://package.elm-lang.org/all-packages')
  req_data = json.decode(res.text)
  for i,pack in ipairs req_data
    table.insert(items, {
      pack.name
      pack.summary
      name: pack.name
      summary: pack.summary
    })
  return howl.interact.select({
    :items
    columns: {
      { header: 'Name' },
      { header: 'Description'}
    }
  })

package_handler = (ln) -> -- returns line table !!!
  proj = howl.Project.for_file(howl.app.editor.buffer.file)
  if proj == nil
    print 'Could not find active project, abort.'
    return
  print(ln.selection.name, ln.selection.summary)
  process = Process({
    cmd: string.format("elm-package install --yes %s",ln.selection.name)
    working_directory: proj.root.path
  })
  if process.exited
    log.info (ln.selection.name .. ' should now be installed in ' .. proj.root.path)

command.register({
  name: 'elm-package'
  description: 'Install packages'
  input: package_input
  handler: package_handler
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

command.register({
  name: 'elm-doc'
  description: 'Show documentation for current context'
  handler: () ->
    context = howl.app.editor.current_context
    -- path = howl.app.editor.buffer.file.parent.path
    proj = howl.Project.for_file(howl.app.editor.buffer.file)
    if proj == nil
      return
    file_path = howl.app.editor.buffer.file.path
    path_no_root = string.sub(file_path, #proj.root.path + 2, #file_path)
    useful = {}
    for item in string.gmatch(context.prefix, "[%w%.]+")
      table.insert(useful, item)
    full_command = string.format("%s %s %s", config.elm_oracle_path, path_no_root, useful[#useful])
    print(full_command)
    o1, _, _ = execute(full_command, working_directory: proj.root.path)
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
  command.unregister 'elm-set-main'
  command.unregister 'elm-package'

return {
  info:
    author: 'Rok Fajfar',
    description: 'Elm language support',
    license: 'MIT',
  :unload
}
