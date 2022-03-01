--[[
    Script Name    : SpawnScripts/Frostfell/icysnowballs.lua
    Script Author  : neatz09
    Script Date    : 2019.10.27 07:10:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick up icy snowballs" then
        SummonItem(Spawn,  48108, 1)
    end
end

function respawn(NPC)

end