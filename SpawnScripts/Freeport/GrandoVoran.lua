--[[
    Script Name    : SpawnScripts/Freeport/GrandoVoran.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:55
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -124.60, -46.69, -254.55, 2, 10)
MovementLoopAddLocation(NPC, -145.56, -51.83, -202.47, 2, 0)
MovementLoopAddLocation(NPC, -160.58, -53.36, -179.52, 2, 0)
MovementLoopAddLocation(NPC, -171.48, -55.53, -147.79, 2, 0)
MovementLoopAddLocation(NPC, -173.28, -56.13, -126.85, 2, 10)
MovementLoopAddLocation(NPC, -171.48, -55.53, -147.79, 2, 0)
MovementLoopAddLocation(NPC, -160.58, -53.36, -179.52, 2, 0)
MovementLoopAddLocation(NPC, -145.56, -51.83, -202.47, 2, 0)
MovementLoopAddLocation(NPC, -135.41, -49.58, -220.82, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end