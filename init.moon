howl.mode.register
  name: 'elm'
  shebangs: '/elm.*$'
  extensions: 'elm'
  create: bundle_load('elm_mode')

unload = ->
  howl.mode.unregister 'elm'

return {
  info:
    author: 'Rok Fajfar',
    description: 'Elm language support',
    license: 'MIT',
  :unload
}
