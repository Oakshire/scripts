--[[
    Script Name    : SpawnScripts/Freeport/AtilusCrassus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:53
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -105.03, -37.72, 27.05, 2, 0)
MovementLoopAddLocation(NPC, -106.52, -37.48, 19.84, 2, 0)
MovementLoopAddLocation(NPC, -100.98, -37.72, 9.20, 2, 0)
MovementLoopAddLocation(NPC, -100.67, -37.71, -0.20, 2, 0)
MovementLoopAddLocation(NPC, -94.60, -37.77, -6.31, 2, 0)
MovementLoopAddLocation(NPC, -85.67, -37.77, -8.96, 2, 0)
MovementLoopAddLocation(NPC, -75.73, -37.77, -4.20, 2, 0)
MovementLoopAddLocation(NPC, -72.81, -37.77, 2.50, 2, 0)
MovementLoopAddLocation(NPC, -75.85, -37.73, 16.86, 2, 0)
MovementLoopAddLocation(NPC, -81.00, -37.74, 28.04, 2, 10)
MovementLoopAddLocation(NPC, -81.00, -37.74, 28.04, 2, 0)
MovementLoopAddLocation(NPC, -75.85, -37.73, 16.86, 2, 0)
MovementLoopAddLocation(NPC, -72.81, -37.77, 2.50, 2, 0)
MovementLoopAddLocation(NPC, -75.73, -37.77, -4.20, 2, 0)
MovementLoopAddLocation(NPC, -85.67, -37.77, -8.96, 2, 0)
MovementLoopAddLocation(NPC, -94.60, -37.77, -6.31, 2, 0)
MovementLoopAddLocation(NPC, -100.67, -37.71, -0.20, 2, 0)
MovementLoopAddLocation(NPC, -100.98, -37.72, 9.20, 2, 0)
MovementLoopAddLocation(NPC, -106.52, -37.48, 19.84, 2, 0)
MovementLoopAddLocation(NPC, -105.03, -37.72, 27.05, 2, 10)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end