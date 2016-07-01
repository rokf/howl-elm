
local serpent = require 'serpent'

local api = dofile 'basic_api.lua'
api['Array'] = dofile 'array_api.lua'
api['Bitwise'] = dofile 'bitwise_api.lua'
api['Char'] = dofile 'char_api.lua'
api['Color'] = dofile 'color_api.lua'
api['Date'] = dofile 'date_api.lua'
api['Debug'] = dofile 'debug_api.lua'
api['Dict'] = dofile 'dict_api.lua'
api['Json'] = {}
api['Json']['Decode'] = dofile 'json_decode_api.lua'
api['Json']['Encode'] = dofile 'json_encode_api.lua'
api['List'] = dofile 'list_api.lua'
api['Maybe'] = dofile 'maybe_api.lua'
api['Platform'] = dofile 'platform_api.lua'
api['Platform']['Cmd'] = dofile 'platform_cmd_api.lua'
api['Platform']['Sub'] = dofile 'platform_sub_api.lua'
api['Process'] = dofile 'process_api.lua'
api['Random'] = dofile 'random_api.lua'
api['Regex'] = dofile 'regex_api.lua'
api['Result'] = dofile 'result_api.lua'
api['Set'] = dofile 'set_api.lua'
api['String'] = dofile 'string_api.lua'
api['Task'] = dofile 'task_api.lua'
api['Time'] = dofile 'time_api.lua'

local complete_api_text = serpent.block(api)
local file = io.open("api.lua","w")
file:write('return ' .. complete_api_text)
file:close()
