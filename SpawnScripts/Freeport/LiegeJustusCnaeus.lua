--[[
    Script Name    : SpawnScripts/Freeport/LiegeJustusCnaeus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:08
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -90.88, -30.21, 87.42, 2, 0)
MovementLoopAddLocation(NPC, -134.00, -38.82, 88.17, 2, 0)
MovementLoopAddLocation(NPC, -154.09, -43.23, 75.62, 2, 0)
MovementLoopAddLocation(NPC, -159.36, -46.23, 51.14, 2, 0)
MovementLoopAddLocation(NPC, -156.04, -50.03, 2.83, 2, 0)
MovementLoopAddLocation(NPC, -171.91, -54.16, -17.22, 2, 0)
MovementLoopAddLocation(NPC, -179.76, -55.48, -17.56, 2, 10)
MovementLoopAddLocation(NPC, -179.76, -55.48, -17.56, 2, 0)
MovementLoopAddLocation(NPC, -171.91, -54.16, -17.22, 2, 0)
MovementLoopAddLocation(NPC, -156.04, -50.03, 2.83, 2, 0)
MovementLoopAddLocation(NPC, -159.36, -46.23, 51.14, 2, 0)
MovementLoopAddLocation(NPC, -154.09, -43.23, 75.62, 2, 0)
MovementLoopAddLocation(NPC, -134.00, -38.82, 88.17, 2, 0)
MovementLoopAddLocation(NPC, -90.88, -30.21, 87.42, 2, 0)
MovementLoopAddLocation(NPC, -63.57, -23.65, 80.48, 2, 10)
MovementLoopAddLocation(NPC, -63.57, -23.65, 80.48, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end