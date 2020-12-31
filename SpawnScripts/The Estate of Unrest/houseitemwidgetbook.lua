--[[
    Script Name    : SpawnScripts/The Estate of Unrest/houseitemwidgetbook.lua
    Script Author  : neatz09
    Script Date    : 2020.12.31 03:12:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Take the book" then
        SummonItem(Spawn, 30001, 1)
		Despawn(NPC)
    end
end