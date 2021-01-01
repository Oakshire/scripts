--[[
    Script Name    : SpawnScripts/The Estate of Unrest/gamepiece4.lua
    Script Author  : neatz09
    Script Date    : 2021.01.01 12:01:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick up game pawn" then
        SummonItem(Spawn, 8602, 1)
		Despawn(NPC)
    end
end