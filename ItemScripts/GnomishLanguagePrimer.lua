--[[
	Script Name		:	Gnomish Language Primer
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:	
--]]

function obtained(Item, Spawn)
	if not HasLanguage(Spawn,6) then
	AddLanguage(Spawn, 6)
	SendMessage(Spawn, "You have learned the basics of the Gnomish language", "White")
	RemoveItem(Spawn, 903)
    end
end