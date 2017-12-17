width = 1280
height = 720
local pathdlg = 1000
local contentdlg = 1001
-- Alert(GetText(1000))
SetText(contentdlg,"path")
function Load()
	local path = GetText(1000)
	local inp = io.open(path, "rb")
	local data = inp:read("*all")
	SetText(contentdlg,data)
	-- Alert(path)
end