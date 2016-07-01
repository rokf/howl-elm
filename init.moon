
mode_reg =
  name: 'elm'
  shebangs: '/elm.*$'
  extensions: 'elm'
  create: bundle_load('elm_mode')

howl.mode.register mode_reg

unload = -> howl.mode.unregister 'elm'

return {
  info:
    author: 'Rok Fajfar',
    description: 'Elm mode',
    license: 'MIT',
  :unload
}
