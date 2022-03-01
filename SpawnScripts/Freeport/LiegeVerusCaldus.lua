--[[
    Script Name    : SpawnScripts/Freeport/LiegeVerusCaldus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:38
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, 69.05, -20.24, 7.21, 2, 0)
MovementLoopAddLocation(NPC, 192.31, -3.82, -75.60, 2, 5)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
