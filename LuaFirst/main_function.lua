-- main.lua
print("====== function 1 ======")

function test1()
	print("in test function")
end
test1()

print("====== function 2 ======")
function test2(p1)
	print(p1)
	print("in test function")
end
test2()
test2(123)

print("====== function 3 ======")
function test3(p1,p2)
	if(p1 == nil) then
		p1="001"
	end
	if(p2 == nil) then
		p2="002"
	end
	
	print("p1="..p1.." p2="..p2)
	print("in test function")
end
test3()
test3(123)
test3(123,456)

print("====== function 4 ======")
function test4(...)
	local len = table.getn(arg)
	print("==> arg len is "..len)
	for a = 1, len do
		print("arg"..a.."="..arg[a])
	end
	print("in test function")
	return 1
end
test4()
test4(123)
test4(123,456)

local re4 = test4(123,"name")
if re4 ~= nil then
	print("re4="..re4)
else
	print("re4=nil")
end	

print("====== function 5 ======")
function test5(...)
	local len = table.getn(arg)
	print("==> arg len is "..len)
	for a = 1, len do
		print("arg"..a.."="..arg[a])
	end
	print("in test function")
	return 1,"name"
end

local re5,n = test5(123,"name")
print("re5="..re5..","..n)

print("====== function 6 ======")
local func6 = test5
local re6,n = func6(123,"name")
print("re6="..re6..","..n)

print("====== function 7 ======")
local event7 = function(p1)
	print("event7="..p1)
end
event7("key")

print("====== function 8 ======")
function test5(...)
	print("new test5")
end
test5()

--[[
====== function 1 ======
in test function
====== function 2 ======
nil
in test function
123
in test function
====== function 3 ======
p1=001 p2=002
in test function
p1=123 p2=002
in test function
p1=123 p2=456
in test function
====== function 4 ======
==> arg len is 0
in test function
==> arg len is 1
arg1=123
in test function
==> arg len is 2
arg1=123
arg2=456
in test function
==> arg len is 2
arg1=123
arg2=name
in test function
re4=1
====== function 5 ======
==> arg len is 2
arg1=123
arg2=name
in test function
re5=1,name
====== function 6 ======
==> arg len is 2
arg1=123
arg2=name
in test function
re6=1,name
====== function 7 ======
event7=key
====== function 8 ======
new test5
]]