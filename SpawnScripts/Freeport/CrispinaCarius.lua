--[[
    Script Name    : SpawnScripts/Freeport/CrispinaCarius.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 09:07:26
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -53.50, -24.37, -41.73, 2, 7)
MovementLoopAddLocation(NPC, -62.65, -24.37, -45.81, 2, 0)
MovementLoopAddLocation(NPC, -92.22, -24.37, -52.65, 2, 0)
MovementLoopAddLocation(NPC, -103.13, -24.37, -51.49, 2, 0)
MovementLoopAddLocation(NPC, -137.67, -24.37, -54.89, 2, 7)
MovementLoopAddLocation(NPC, -103.13, -24.37, -51.49, 2, 0)
MovementLoopAddLocation(NPC, -92.22, -24.37, -52.65, 2, 0)
MovementLoopAddLocation(NPC, -62.65, -24.37, -45.81, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end

