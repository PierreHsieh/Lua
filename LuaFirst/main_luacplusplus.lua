-- main.lua
print("====== Lua C++ 1 ======")
CTest1()

print("====== Lua C++ 2 ======")
CTest2("lua string")

print("====== Lua C++ 3 ======")
CTest3("lua string", 123)

print("====== Lua C++ 4 ======")
CTest4("lua string", 123, true)
CTest4("lua string", 123, false)
CTest4_snb("snb lua string", 123, true)

print("====== Lua C++ 5 ======")
local arr = {"A001", "A002", "A003"}
CTestArr1(arr)

print("====== Lua C++ 6 ======")
local tab1 = {name="Alex",arg="22",id="007"}
CTestTable1(tab1)

print("====== Lua C++ 7 ======")
local tab2 = {name="Alex",arg="22",id="007"}
CTestTable2(tab2)

print("====== Lua C++ 8 ======")
local tabCheck1 = {name="Alex",arg="22",id="007"}
local size1_1 = 100
local size1_2 = "100"
CTestTableCheck1(tabCheck1,size1_1)
CTestTableCheck1(tabCheck1,size1_2)

print("====== Lua C++ 9 ======")
local re1 = CTestRe1()
print("re1 = ".. re1)

print("====== Lua C++ 10 ======")
local re2 = CTestRe2()
print("re2 " .. "name = ".. re2["name"])
print("re2 " .. "age = " .. re2["age"])

--[[
====== Lua C++ 1 ======
int CTest1
====== Lua C++ 2 ======
int CTest2
Lua name = lua string
====== Lua C++ 3 ======
int CTest3
Lua name = lua string age = 123
====== Lua C++ 4 ======
int CTest4
Lua name = lua string age = 123 is = 1
int CTest4
Lua name = lua string age = 123 is = 0
int CTest4
Lua name = snb lua string age = 123 is = 1
====== Lua C++ 5 ======
int CTestArr1
A001
A002
A003
====== Lua C++ 6 ======
key = id value = 007
key = arg value = 22
key = name value = Alex
====== Lua C++ 7 ======
name = Alex
====== Lua C++ 8 ======
name = Alex
para 2 is not number
name = Alex
====== Lua C++ 9 ======
re1 = return value
====== Lua C++ 10 ======
re2 name = Alex
re2 age = 20
]]