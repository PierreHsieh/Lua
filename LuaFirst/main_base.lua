-- main.lua
print("Hello Lua")
local a = nil
-- dofile("sub.lua")
print(type(a))
local n = nil

html = "test1".."test2"
print("string len = "..string.len(html))
print("sub string = "..string.sub(html,3,5))

html = [[
<html>
</html>
]]
local b,e = string.find(html,"html")
print("b = "..b.." e = "..e)

local re = string.gsub(html,"html", "body")
print("html = "..html)
print("re = "..re)

if(1==1 and 1==3 or 3==3) then
	print("1==1")
elseif (2==2) then
	print("2==2")
else
	print("in else")
end

local i = 4
while(not (i < 0)) do
	print("i="..i)
	i = i - 1
	if(i == 2) then
		print("break while")
		break
	end
end

local j = 6
repeat
	j = j + 1
	print("j = ".. j)
until j > 10

for var = 1,5,2 do
	print("var = " .. var)
end

for var = 10,14 do
	print("var = " .. var)
end

local days={"Sun","Mon","Tue"}
for i,v in ipairs(days) do
	print(i..":"..v);
end

local tab={[1] = "A", [2] = "B", [4] = "D"}
for i,v in pairs(tab) do
	print(i.."--"..v);
end
for i,v in ipairs(tab) do
	print(i.."=="..v);
end

for i,v in ipairs(tab) do print(i..v) end
	
--[[
Hello Lua
nil
string len = 10
sub string = st1
b = 2 e = 5
html = <html>
</html>

re = <body>
</body>

1==1
i=4
i=3
break while
j = 7
j = 8
j = 9
j = 10
j = 11
var = 1
var = 3
var = 5
var = 10
var = 11
var = 12
var = 13
var = 14
1:Sun
2:Mon
3:Tue
1--A
2--B
4--D
1==A
2==B
1A
2B
]]
