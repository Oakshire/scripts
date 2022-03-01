--[[
    Script Name    : SpawnScripts/SunkenCity/wornpostkilroy.lua
    Script Author  : neatz09
    Script Date    : 2020.06.20 04:06:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
GiveLoot(NPC, Spawn, 0, 20902, 15354, 185427)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn)

end