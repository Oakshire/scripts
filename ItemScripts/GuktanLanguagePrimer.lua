--[[
	Script Name		:	Gukish Language Primer
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	1/19/2019
	Script Notes	:Saved as a test
--]]

function obtained(Item, Spawn)
if not HasLanguage(Spawn, 5) then 
    AddLanguage(Spawn, 5)
    SendMessage(Spawn, "You have learned the basics of the Guktan language.", "White")
    RemoveItem(Spawn, 906) 
end

end
