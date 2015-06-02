log("[BLT-KeepTable] Persist called")

bltKeepTable_data = bltKeepTable_data or { }
if not bltKeepTable_data.data then
	log("[BLT-KeepTable] Initializing table...")
	bltKeepTable_data.data = "Hey, here's your data!"
	if bltKeepTable_data == _G.bltKeepTable_data then
		log("[BLT-KeepTable] Table is available on _G too!")
	end
else
	log("[BLT-KeepTable] The data is already there! :)")
end