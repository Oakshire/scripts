--[[
	Script Name		:	Koada'Dal Language Primer
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:	
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn,9) then
	AddLanguage(Spawn, 9)
	SendMessage(Spawn, "You have learned the basics of the Koada'Dal language.", "White")
	RemoveItem(Spawn, 905) 
end

end