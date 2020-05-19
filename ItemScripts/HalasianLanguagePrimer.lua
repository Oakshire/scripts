--[[
	Script Name		:	Halasian Language Primer
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:	
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn,1) then
	AddLanguage(Spawn, 1)
	SendMessage(Spawn, "Halasian", "White")
	RemoveItem(Spawn, 907) 
end

end