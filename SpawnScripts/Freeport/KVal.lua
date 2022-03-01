--[[
    Script Name    : SpawnScripts/Freeport/KVal.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:35
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -144.82, -37.65, 66.13, 2, 0)
MovementLoopAddLocation(NPC, -132.02, -37, 72.52, 2, 0)
MovementLoopAddLocation(NPC, -124.60, -37.74, 63.22, 2, 0)
MovementLoopAddLocation(NPC, -111.85, -37.73, 60.38, 2, 0)
MovementLoopAddLocation(NPC, -100.26, -37.71, 50.44, 2, 0)
MovementLoopAddLocation(NPC, -96.37, -37.73, 33.80, 2, 10)
MovementLoopAddLocation(NPC, -96.37, -37.73, 33.80, 2, 0)
MovementLoopAddLocation(NPC, -100.26, -37.71, 50.44, 2, 0)
MovementLoopAddLocation(NPC, -111.85, -37.73, 60.38, 2, 0)
MovementLoopAddLocation(NPC, -124.60, -37.74, 63.22, 2, 0)
MovementLoopAddLocation(NPC, -132.02, -37, 72.52, 2, 0)
MovementLoopAddLocation(NPC, -144.82, -37.65, 66.13, 2, 10)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
