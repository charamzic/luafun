-- io.output("myfile.txt") -- pokud uz existuje, tak ho premazne
-- io.close()
-- io.write("Ahoj, tohle je k zapisu do souboru.")

-- io.input("myfile.txt")
-- local data = io.read("*all")
-- io.close()
-- print(data)

-- local file = io.open("myfile.txt", "a+")

-- if file ~= nil then
-- 	file:write("\nHello there, appended this line.")
-- 	file:close()
-- else
-- 	print("Could not open the file.")
-- end

local file = io.open("myfile.txt", "r")

if file ~= nil then
	local result = file:read("*all")
	print(result)
	file:close()
else
	print("Could not open the file.")
end
