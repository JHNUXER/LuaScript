Token = {
	newFromValue = function(v)
		local tbl = {
			type = type(v),
			value = v
		}
		setmetatable(tbl,Token)
		return tbl
	end,
	newFromIdent = function(i)
		local typ
		if string.match(i,"([.])&") then typ = "functionCall" else typ = "variable" end
		local tbl = {
			type = typ,
			value = i
		}
		setmetatable(tbl,Token)
	end,
	ADD = {
		type = "operator",
		
	}
}

Expression = {
	new = function(tTokens)
		setmetatable(tTokens,Expression)
		return tTokens
	end,
	__unm = function(x)
		for i = 1,#x do
			type(x)
		end
	end
}
