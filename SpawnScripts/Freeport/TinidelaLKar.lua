--[[
    Script Name    : SpawnScripts/Freeport/TinidelaLKar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.14 07:07:15
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -75.49, -34.59, -335.78, 2, 0)
MovementLoopAddLocation(NPC, -48.71, -27.31, -334.84, 2, 0)
MovementLoopAddLocation(NPC, -45.42, -20.05, -294.38, 2, 7)
MovementLoopAddLocation(NPC, -48.71, -27.31, -334.84, 2, 0)
MovementLoopAddLocation(NPC, -75.49, -34.59, -335.78, 2, 0)
MovementLoopAddLocation(NPC, -85.97, -34.59, -351.33, 2, 7)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)

end
