--[[
    Script Name    : SpawnScripts/Freeport/LucanicKnightMarcusRusonius.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:48
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
SetMount(NPC, 16339)
MovementLoopAddLocation(NPC, 33.94, -19.77, 45.84, 7, 0)
MovementLoopAddLocation(NPC, 21.91, -19.97, 55.91, 7, 0)
MovementLoopAddLocation(NPC, -20.13, -19.98, 57.29, 7, 0)
MovementLoopAddLocation(NPC, -38.63, -19.98, 39.42, 7, 0)
MovementLoopAddLocation(NPC, -37.92, -19.96, -5.38, 7, 0)
MovementLoopAddLocation(NPC, -27.03, -19.62, -17.86, 7, 7)
MovementLoopAddLocation(NPC, -37.92, -19.96, -5.38, 7, 0)
MovementLoopAddLocation(NPC, -38.63, -19.98, 39.42, 7, 0)
MovementLoopAddLocation(NPC, -20.13, -19.98, 57.29, 7, 0)
MovementLoopAddLocation(NPC, 21.91, -19.97, 55.91, 7, 0)
MovementLoopAddLocation(NPC, 33.94, -19.77, 45.84, 7, 7)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
