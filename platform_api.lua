return {
  ProcessId = {
    description = "#typeProcessId\n Head over to the documentation for the Process module for\ninformation on this. It is only defined here because it is a platform\nprimitive.",
    signature = "typeProcessId"
  } --[[table: 0x41d4e908]],
  Program = {
    description = "#typeProgram flags\n Every Elm project will define main to be some sort of Program. A\nProgram value captures all the details needed to manage your application,\nincluding how to initialize things, how to respond to events, etc.",
    signature = "typeProgram flags"
  } --[[table: 0x41d4e138]],
  Router = {
    description = "#typeRouter appMsg selfMsg\n An effect manager has access to a “router” that routes messages between\nthe main app and your individual effect manager.",
    signature = "typeRouter appMsg selfMsg"
  } --[[table: 0x41d4ee28]],
  Task = {
    description = "#typeTask err ok\n Head over to the documentation for the Task module for more\ninformation on this. It is only defined here because it is a platform\nprimitive.",
    signature = "typeTask err ok"
  } --[[table: 0x41d4e570]],
  sendToApp = {
    description = "#sendToApp:Router msg a -> msg ->Task x ()\n Send the router a message for the main loop of your app. This message will\nbe handled by the overall update function, just like events from Html.",
    signature = "sendToApp:Router msg a -> msg ->Task x ()"
  } --[[table: 0x41d4f280]],
  sendToSelf = {
    description = "#sendToSelf:Router a msg -> msg ->Task x ()\n Send the router a message for your effect manager. This message will\nbe routed to the onSelfMsg function, where you can update the state of your\neffect manager as necessary.",
    signature = "sendToSelf:Router a msg -> msg ->Task x ()"
  } --[[table: 0x41d0a4c0]]
} --[[table: 0x41d4dbd0]]