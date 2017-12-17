-- main.lua
print("====== tab1 ======")
local tab1 = {"001", "002", "003"}
for i,v in ipairs(tab1) do
	print("value=" .. v)
end

print("====== insert ======")
table.insert(tab1,3,"002-2")
for i,v in ipairs(tab1) do
	print("value=" .. v)
end
print("====== insert back======")
table.insert(tab1,"004")
for i,v in ipairs(tab1) do
	print("value=" .. v)
end

print("====== remove ======")
table.remove(tab1,2)
for i,v in ipairs(tab1) do
	print("value=" .. v)
end

print("====== remove back ======")
table.remove(tab1)
for i,v in ipairs(tab1) do
	print("value=" .. v)
end

print("====== tab2 ======")
local tab2 = {id=123,age=20}
for k,v in pairs(tab2) do
	print(k.. ":" .. v)
end

print("====== insert ======")
tab2["name"] = "Alex"
for k,v in pairs(tab2) do
	print(k.. ":" .. v)
end

print("====== remove ======")
tab2["id"] = nil
for k,v in pairs(tab2) do
	print(k.. ":" .. v)
end

print("====== tab3 ======")
local tab3 = {}
tab3[1] = {"name1","name2"}
tab3[2] = {"value1","value2"}
for k,v in pairs(tab3) do
	print("k=".. k)
	for k2,v2 in pairs(v) do
		print("k2=".. k2 .. ":v2=" .. v2)
	end
end

--[[
====== tab1 ======
value=001
value=002
value=003
====== insert ======
value=001
value=002
value=002-2
value=003
====== insert back======
value=001
value=002
value=002-2
value=003
value=004
====== remove ======
value=001
value=002-2
value=003
value=004
====== remove back ======
value=001
value=002-2
value=003
====== tab2 ======
id:123
age:20
====== insert ======
id:123
age:20
name:Alex
====== remove ======
age:20
name:Alex
====== tab3 ======
k=1
k2=1:v2=name1
k2=2:v2=name2
k=2
k2=1:v2=value1
k2=2:v2=value2
]]