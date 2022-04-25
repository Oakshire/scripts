--[[
	Script Name		:   Stout Language Primer	
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/18/2019
	Script Notes	:	
--]]

function buy_display_flags(Item, Spawn)
    if HasLanguage(Spawn,8) then return 128
end
end

function obtained(Item, Spawn)
	if not HasLanguage(Spawn,8) then
	AddLanguage(Spawn, 8)
	SendMessage(Spawn, "You have learned the basics of the Stout language", "White")
	RemoveItem(Spawn, 904)
end

end