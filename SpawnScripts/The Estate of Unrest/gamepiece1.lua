--[[
    Script Name    : SpawnScripts/The Estate of Unrest/gamepiece1.lua
    Script Author  : neatz09
    Script Date    : 2021.01.01 12:01:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick up game pawn" then
        SummonItem(Spawn, 8597, 1)
		Despawn(NPC)
    end
end