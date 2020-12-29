--[[
    Script Name    : SpawnScripts/The Estate of Unrest/frontdoorkey02.lua
    Script Author  : neatz09
    Script Date    : 2020.12.29 12:12:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick up key part" then
        SummonItem(Spawn, 15114, 1)
		Despawn(NPC)
    end
end