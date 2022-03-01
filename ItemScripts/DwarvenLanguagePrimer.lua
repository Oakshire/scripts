--[[
	Script Name		:	Dwarven Language Primer
	Script Purpose	:	<purpose>
	Script Author	:	<author-name>
	Script Date		:	1/19/2019
	Script Notes	:	<special-instructions>
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn,3) then
	AddLanguage(Spawn, 3)
	SendMessage(Spawn, "You have learned the basics of the Dwarven language.", "White")
	RemoveItem(Spawn, 900) 
	end
	
	end
	