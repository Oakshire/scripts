--[[
    Script Name    : SpawnScripts/qeynos_combined02/TrellyGreenthorn.lua
    Script Author  : Rylec
    Script Date    : 2021.01.19 06:01:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "hide_hood", "1")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

