
-- This script generates the API file for Elm by parsing the package docs html file

local xml = require 'xml'
local lub = require 'lub'
local serpent = require 'serpent'

local file_name = arg[1]
print("SRC:",file_name)
local file = io.open(file_name, "r")
local content = file:read("*all")
file:close()

local data = xml.load(content)

function take_next(node, out)
  if type(node) == "table" then
    for index, child in ipairs(node) do
      take_next(child, out)
    end
  else
    table.insert(out, node)
  end
end

function concat(node)
  local o = {}
  take_next(node, o)
  return table.concat(o)
end

local list = {}

lub.search(data, function(node)
  if node.xml == "div" and node.class == "docs-entry" then
    if string.match(node.id, "[a-zA-Z]+") ~= nil then
      print(node.id)
      local description = concat(node[2][1][1])
      local signature = concat(node[1])

      list[node.id] = {
        description = string.format("#%s\n%s", signature, description),
        signature = signature
      }
    end
  end
end)

local text = 'return ' .. serpent.block(list)

local file = io.open(arg[2] or 'api.lua', "w")
file:write(text)
file:close()
