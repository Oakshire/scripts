--[[
    Script Name    : ItemScripts/SebilisianLanguagePrimer.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 05:01:24
    Script Purpose : 
                   : 
--]]


function obtained(Item, Spawn)
	if not HasLanguage(Spawn,12) then
	    AddLanguage(Spawn, 12)
	SendMessage(Spawn, "You have learned the basics of the Sebilisian language", "White")
	RemoveItem(Spawn, 913)
end
end