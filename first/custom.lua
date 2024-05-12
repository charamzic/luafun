Mod = {
	hello = function()
		return "Hello"
	end,
}

function Mod.sum(x, y) -- to same co nahore, budto mohu do modu pridat funkci tak, nebo tak
	return x + y
end

return Mod
