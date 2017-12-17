-- main.lua
print("====== C++ Lua 1 ======")
width = 1920

print("====== C++ Lua 2 ======")
print("c++ str = " .. str)

print("====== C++ Lua 3 ======")
ltab = 
{
	titlename="first lua",
	height = 1080
}

print("====== C++ Lua 4 ======")
print("c++ tab " .. "name = " .. ctab["name"] .. " age = " .. ctab["age"])

print("====== C++ Lua 5 ======")
function levent1()
	print("c++ call lua function")
end

print("====== C++ Lua 6 ======")
function levent2(e,v)
	print("c++ call lua function")
	print(e)
	print(v)
	return "lua event return"
end

print("====== C++ Lua 7 ======")
function ferror1(e)
	print("My error:" .. e)
	return "lua change error"
end	

function levent3(e,v)
	print("c++ call lua function")
	print(e)
	print(v)
	return "lua event return"
end

print("====== C++ Lua 8 ======")
function ferror2(e)
	print("My error:" .. e)
	return "lua change error"
end	

function levent4(e,v,obj)
	print("c++ call lua function")
	print(e)
	print(v)
	print(obj.name)
	print(obj.age)
	local re = {id = 123, work = "CEO"}
	return re
end


--[[
====== C++ Lua 1 ======
====== C++ Lua 2 ======
c++ str = Hello
====== C++ Lua 3 ======
====== C++ Lua 4 ======
c++ tab name = Alex age = 20
====== C++ Lua 5 ======
====== C++ Lua 6 ======
====== C++ Lua 7 ======
====== C++ Lua 8 ======
lua width var = 1920
lua titlename = first lua
lua height = 1080
11 top is 5
c++ call lua function
14 top is 5
21 top is 5
call event failed attempt to call a nil value
22 top is 6
23 top is 5
24 top is 5
31 top is 5
c++ call lua function
key
100
lua return lua event return
34 top is 5
41 top is 5
c++ call lua function
key
100
lua return lua event return
44 top is 5
51 top is 5
My error:attempt to call a nil value
call event failed lua change error
52 top is 7
53 top is 6
54 top is 5
61 top is 5
c++ call lua function
key
100
Alex
20
lua id = 123
lua work = CEO
64 top is 5

D:\Virtual_Machines\SharedFolder\Qt_Lua\bin>
]]