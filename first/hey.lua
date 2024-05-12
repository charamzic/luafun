-- Print do konzole je docela straightforward
print("Hey!")
print("Hey!", "<- Here is going to be a tab space.")
print("Hey!" .. "<- Now, it won't be there.")
print("Hey!" .. " " .. "<- And you can combine it like so.")

--[[
	nil
	number 1, 1.23, 0.1
	string 'hello', "hey"
	boolean true false
	table
]]

-- variables
local a
a = 1
local b = 2 + a
print(b)
local c = tostring(a)
print("a as a string: " .. c, type(c))

local one, two, three = "one", 2, false
print(one, two, three)

local name = "Jack"
print("Hello, my name is " .. name .. " and I have decided to change my name " .. name .. " to Karl.")

-- using hashtag I can get length
print("Length of the name is " .. #name)

local literal_description = [[
	Hello, mate, how do you do these days?
	Have been worrying what happened to you!
]]
print(literal_description)

-- Math
print(5 + 5)
print(5 - 5)
print(5 * 5)
print(5 / 5)
print(5 ^ 5)
print(5 % 5)
print(math.ceil(13.3))
print(math.floor(13.3))
print(math.random())
-- vic random
math.randomseed(os.time())
-- 1 - 10
print(math.random(10))
-- 10 - 50
print(math.random(10, 50))

-- conditions
if true then
	print("Ma pravdu ten chlapec")
end

--[[
	and
	or
	not
	<
	>
	=<
	>=
	~= not equal
	==
]]

-- loops
for i = 1, 10 do
	print(i)
end

-- steps 1 is default
for i = 1, 10, 2 do
	print(i)
end

local count = 0
while count < 10 do
	count = count + 1
	print("Hey!")
end

-- repeat runs at least once
repeat
	count = count + 1
	print("Hou!")
until count > 3

-- user input
print("What is your name?")
local answer = io.read()
print("Your name is " .. answer)

io.write("Enter your name: ")
local answer = io.read() -- lua umoznuje redefine, ale nevim, jestli je to nejlepsi practice :)
print(answer)

-- data structure - table
local tbl = {
	"This",
	2,
	"@",
	true,
	{ "another table" },
	-- tbl[5][1]
}
for i = 1, #tbl do
	print(tbl[i])
end
--[[
	This
	2
	@
	true
	table: 0x600001c98040nd
]]

table.insert(tbl, "Vlozeno")
-- do remove se dava pozice
table.remove(tbl, 2)

for index, value in pairs(tbl) do
	print(index, value)
	print(index)
	print(value)
end

local multi_table = {
	{ 1, 2, 3 },
	{ 4, 5, 6, "&", 333 },
	{ 7, 8, 9, { "another table" } },
	{ "deset", "jedenact", true },
}
print(multi_table[4][2]) -- jedenact

for i = 1, #multi_table do
	for j = 1, #multi_table[i] do
		print(multi_table[i][j])
	end
end

local conc_table = { 1, 2, 3 }
print(table.concat(conc_table, " "))

local named_table = {
	name = "Pepa",
	age = 13,
}
print(named_table["name"])

-- funkce
local function say_hello(name, x, y)
	local name = name or "John"
	print("Hello, " .. name)
	return x + y
end

local result = say_hello("Jack", 9, 4)
print(result)
