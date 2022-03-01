--[[
    Script Name    : SpawnScripts/The Estate of Unrest/failsafechest.lua
    Script Author  : neatz09
    Script Date    : 2020.12.31 11:12:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Try to recover a lost progression item" then
        SummonItem(Spawn, 8677, 1)
		Despawn(NPC)
    end
end
