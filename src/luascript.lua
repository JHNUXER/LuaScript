LuaScript = {}

LuaScript.parse = function parse(sInput)
  local tTokens = {}
  setmetatable(tTokens,{add = function(x) table.insert(tTokens,x) end})
  local tok = ""
  local state = 0
  local table = {sInput:gsub("[.]")}
  for i = 1,#table do
    local chr = table[i]
    tok = tok + chr
    if state == 0 then
      if tok == "\"" then
        state = 1
      elseif tok == "function" then
        state = 2
      elseif tok == "\'" then
        state = 1
      elseif tok == "if" then
        state = 3
      elseif tok == "{" then
        state = 4
      elseif tok == "?" then
        state = 5
      end
    end
  end
end

LuaScript.exec = function(pCode)
end

LuaScript.compile = function(sInput) end
