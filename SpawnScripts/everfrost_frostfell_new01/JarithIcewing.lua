--[[
    Script Name    : SpawnScripts/everfrost_frostfell_new01/JarithIcewing.lua
    Script Author  : neatz09
    Script Date    : 2019.12.08 11:12:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
        Say(NPC, "Happy Frostfell!", Spawn)
end

function respawn(NPC)

end

