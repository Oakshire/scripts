--[[
    Script Name    : SpawnScripts/The Estate of Unrest/pianonote.lua
    Script Author  : neatz09
    Script Date    : 2020.12.31 11:12:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick up note" then
        SummonItem(Spawn, 10383, 1)
		Despawn(NPC)
    end
end