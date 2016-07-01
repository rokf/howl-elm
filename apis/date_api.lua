return {
  Date = {
    description = "#typeDate\n Representation of a date.",
    signature = "typeDate"
  } --[[table: 0x41692380]],
  Day = {
    description = "#typeDay\n    = Mon\n    | Tue\n    | Wed\n    | Thu\n    | Fri\n    | Sat\n    | Sun\n Represents the days of the week.",
    signature = "typeDay\n    = Mon\n    | Tue\n    | Wed\n    | Thu\n    | Fri\n    | Sat\n    | Sun"
  } --[[table: 0x416974c8]],
  Month = {
    description = "#typeMonth\n    = Jan\n    | Feb\n    | Mar\n    | Apr\n    | May\n    | Jun\n    | Jul\n    | Aug\n    | Sep\n    | Oct\n    | Nov\n    | Dec\n Represents the month of the year.",
    signature = "typeMonth\n    = Jan\n    | Feb\n    | Mar\n    | Apr\n    | May\n    | Jun\n    | Jul\n    | Aug\n    | Sep\n    | Oct\n    | Nov\n    | Dec"
  } --[[table: 0x41694cc8]],
  day = {
    description = "#day:Date-> Int\n Extract the day of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 23.",
    signature = "day:Date-> Int"
  } --[[table: 0x41696e38]],
  dayOfWeek = {
    description = "#dayOfWeek:Date->Day\n Extract the day of the week for a given date. Given the date 23 June\n1990 at 11:45AM this returns the day Sat as defined below.",
    signature = "dayOfWeek:Date->Day"
  } --[[table: 0x416971f8]],
  fromString = {
    description = "#fromString: String ->Result String Date\n Attempt to read a date from a string.",
    signature = "fromString: String ->Result String Date"
  } --[[table: 0x416929a8]],
  fromTime = {
    description = "#fromTime:Time->Date\n Convert a time in milliseconds into a Date.",
    signature = "fromTime:Time->Date"
  } --[[table: 0x41693038]],
  hour = {
    description = "#hour:Date-> Int\n Extract the hour of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 11.",
    signature = "hour:Date-> Int"
  } --[[table: 0x41693170]],
  millisecond = {
    description = "#millisecond:Date-> Int\n Extract the millisecond of a given date. Given the date 23 June 1990 at 11:45:30.123AM\nthis returns the integer 123.",
    signature = "millisecond:Date-> Int"
  } --[[table: 0x41694fa8]],
  minute = {
    description = "#minute:Date-> Int\n Extract the minute of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 45.",
    signature = "minute:Date-> Int"
  } --[[table: 0x41694578]],
  month = {
    description = "#month:Date->Month\n Extract the month of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the month Jun as defined below.",
    signature = "month:Date->Month"
  } --[[table: 0x41694158]],
  now = {
    description = "#now:Task x Date\n Get the Date at the moment when this task is run.",
    signature = "now:Task x Date"
  } --[[table: 0x416926e8]],
  second = {
    description = "#second:Date-> Int\n Extract the second of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 0.",
    signature = "second:Date-> Int"
  } --[[table: 0x41694910]],
  toTime = {
    description = "#toTime:Date->Time\n Convert a Date to a time in milliseconds.",
    signature = "toTime:Date->Time"
  } --[[table: 0x41cf45d8]],
  year = {
    description = "#year:Date-> Int\n Extract the year of a given date. Given the date 23 June 1990 at 11:45AM\nthis returns the integer 1990.",
    signature = "year:Date-> Int"
  } --[[table: 0x41693468]]
} --[[table: 0x41691cd8]]