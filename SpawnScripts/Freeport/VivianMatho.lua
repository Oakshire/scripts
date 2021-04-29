--[[
    Script Name    : SpawnScripts/Freeport/VivianMatho.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 11:07:42
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, 137.83, -7.05, 139.32, 2, 0)
MovementLoopAddLocation(NPC, 144.19, -10.49, 146.72, 2, 0)
MovementLoopAddLocation(NPC, 154.96, -16.10, 136.90, 2, 0)
MovementLoopAddLocation(NPC, 148.71, -16.79, 129.54, 2, 7)
MovementLoopAddLocation(NPC, 154.96, -16.10, 136.90, 2, 0)
MovementLoopAddLocation(NPC, 165.60, -10.49, 126.17, 2, 0)
MovementLoopAddLocation(NPC, 157.96, -7.05, 118.85, 2, 0)
MovementLoopAddLocation(NPC, 153.07, -7.05, 125.99, 2, 0)
MovementLoopAddLocation(NPC, 143.83, -7.05, 134.42, 2, 7)
end




function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end

