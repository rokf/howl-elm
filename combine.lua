
local serpent = require 'serpent'

local api = dofile 'apis/basic_api.lua'
api['Array'] = dofile 'apis/array_api.lua'
api['Bitwise'] = dofile 'apis/bitwise_api.lua'
api['Char'] = dofile 'apis/char_api.lua'
api['Color'] = dofile 'apis/color_api.lua'
api['Date'] = dofile 'apis/date_api.lua'
api['Debug'] = dofile 'apis/debug_api.lua'
api['Dict'] = dofile 'apis/dict_api.lua'
api['Json'] = {}
api['Json']['Decode'] = dofile 'apis/json_decode_api.lua'
api['Json']['Encode'] = dofile 'apis/json_encode_api.lua'
api['List'] = dofile 'apis/list_api.lua'
api['Maybe'] = dofile 'apis/maybe_api.lua'
api['Platform'] = dofile 'apis/platform_api.lua'
api['Platform']['Cmd'] = dofile 'apis/platform_cmd_api.lua'
api['Platform']['Sub'] = dofile 'apis/platform_sub_api.lua'
api['Process'] = dofile 'apis/process_api.lua'
api['Random'] = dofile 'apis/random_api.lua'
api['Regex'] = dofile 'apis/regex_api.lua'
api['Result'] = dofile 'apis/result_api.lua'
api['Set'] = dofile 'apis/set_api.lua'
api['String'] = dofile 'apis/string_api.lua'
api['Task'] = dofile 'apis/task_api.lua'
api['Time'] = dofile 'apis/time_api.lua'

local complete_api_text = serpent.block(api)
local file = io.open("api.lua","w")
file:write('return ' .. complete_api_text)
file:close()
