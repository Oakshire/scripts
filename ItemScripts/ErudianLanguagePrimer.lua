--[[
	Script Name		:	Erudian Language Primer
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:	
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn,4) then
	AddLanguage(Spawn, 4)
	SendMessage(Spawn, "Erudian", "White")
	RemoveItem(Spawn, 909) 
end

end