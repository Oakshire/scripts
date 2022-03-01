--[[
    Script Name    : SpawnScripts/Freeport/LiegeAnniaFontia.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:18
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, 153.19, -3.56, 50.73, 2, 0)
MovementLoopAddLocation(NPC, 187.51, -3.64, 85.16, 2, 0)
MovementLoopAddLocation(NPC, 236.18, -3.63, 90.68, 2, 0)
MovementLoopAddLocation(NPC, 253.29, -3.69, 120.66, 2, 7)
MovementLoopAddLocation(NPC, 236.18, -3.63, 90.68, 2, 0)
MovementLoopAddLocation(NPC, 187.51, -3.64, 85.16, 2, 0)
MovementLoopAddLocation(NPC, 153.19, -3.56, 50.73, 2, 0)
MovementLoopAddLocation(NPC, 151.24, -3.03, 20.72, 2, 7)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
