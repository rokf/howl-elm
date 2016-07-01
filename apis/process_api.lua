return {
  Id = {
    description = "#typealiasId=ProcessId\n A light-weight process that runs concurrently. You can use spawn to\nget a bunch of different tasks running in different processes. The Elm runtime\nwill interleave their progress. So if a task is taking too long, we will pause\nit at an andThen and switch over to other stuff.",
    signature = "typealiasId=ProcessId"
  } --[[table: 0x416ef328]],
  kill = {
    description = "#kill:Id->Task x ()\n Sometimes you spawn a process, but later decide it would be a waste to\nhave it keep running and doing stuff. The kill function will force a process\nto bail on whatever task it is running. So if there is an HTTP request in\nflight, it will also abort the request.",
    signature = "kill:Id->Task x ()"
  } --[[table: 0x415b4b58]],
  sleep = {
    description = "#sleep:Time->Task x ()\n Block progress on the current process for a given amount of time. The\nJavaScript equivalent of this is setTimeout which lets you\ndelay work until later.",
    signature = "sleep:Time->Task x ()"
  } --[[table: 0x415b35d0]],
  spawn = {
    description = "#spawn:Task x a ->Task y Id\n Run a task in its own light-weight process. In the following example,\ntask1 and task2 will be interleaved. If task1 makes a long HTTP request\nor is just taking a long time, we can hop over to task2 and do some work\nthere.",
    signature = "spawn:Task x a ->Task y Id"
  } --[[table: 0x416eef58]]
} --[[table: 0x416eed18]]