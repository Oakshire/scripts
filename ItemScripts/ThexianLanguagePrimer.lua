--[[
	Script Name		:	Thexian Language Primer
	Script Purpose	:	
	Script Author	:	
	Script Date		:	3/1/2021
	Script Notes	:	
--]]

function obtained(Item, Spawn)
    if not HasLanguage(Spawn,2) then
	AddLanguage(Spawn, 2)
	SendMessage(Spawn, "You have learned the basics of the Thexian language.", "White")
	RemoveItem(Spawn, 910) 
	    end
	end