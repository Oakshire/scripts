--[[
	Script Name		:	Kerran Language Primer
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:	
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn, 13) then 
    AddLanguage(Spawn, 13)
    SendMessage(Spawn, "Kerran", "White")
    RemoveItem(Spawn, 908) 
end

end