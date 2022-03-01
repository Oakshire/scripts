--[[
    Script Name    : SpawnScripts/RylecsTest/Floor01.lua
    Script Author  : Rylec
    Script Date    : 2021.01.29 04:01:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "activity_state", "64")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

