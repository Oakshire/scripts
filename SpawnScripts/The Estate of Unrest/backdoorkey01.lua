--[[
    Script Name    : SpawnScripts/The Estate of Unrest/backdoorkey01.lua
    Script Author  : neatz09
    Script Date    : 2020.12.31 04:12:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick up key" then
        SummonItem(Spawn, 15113, 1)
		Despawn(NPC)
    end
end

