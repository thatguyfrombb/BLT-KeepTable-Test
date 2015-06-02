local originalfn_quit = CoreSetup.quit

function CoreSetup:quit()
	-- This will only work when exiting from the menu option. Won't work if you use Alt+F4, close the window in any way or crash
	managers.localization:bltKeepTable_save()
	originalfn_quit(self)
end