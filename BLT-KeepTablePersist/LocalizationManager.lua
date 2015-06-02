-- Keep pointer
local originalfn_init = LocalizationManager.init

function LocalizationManager:init()
	log("[BLT-KeepTable] LocalizationManager:Init() called")
	if not bltKeepTable_data then
		log("[BLT-KeepTable] LocalizationManager:init() -> Data NOT found :(")
	else
		log("[BLT-KeepTable] LocalizationManager:init() -> Data: " .. bltKeepTable_data.data)
	end
	originalfn_init(self)
end

function LocalizationManager:bltKeepTable_save()
	-- Nothing for now
	log("[BLT-KeepTable] LocalizationManager:bltKeepTable_save() called")
	if bltKeepTable_data.data then
		log("[BLT-KeepTable] LocalizationManager:save() -> Data: " .. bltKeepTable_data.data)
	else
		log("[BLT-KeepTable] LocalizationManager:save() -> Data NOT found :(")
	end
end