--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunarianhorsesentry401114.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.27 06:05:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, 217.01, -0.97, -101.64, 7, 0)
MovementLoopAddLocation(NPC, 236.41, -1.04, -76.67, 7, 0)
MovementLoopAddLocation(NPC, 237.64, -4.06, -30.52, 7,0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

