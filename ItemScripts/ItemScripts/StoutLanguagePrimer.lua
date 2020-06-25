--[[
	Script Name		:   Stout Language Primer	
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/18/2019
	Script Notes	:	
--]]

function obtained(Item, Spawn)
	if not HasLanguage(Spawn,8) then
	    AddLanguage(Spawn, 8)
	SendMessage(Spawn, "Stout", "White")
	RemoveItem(Spawn, 904)
end

end
