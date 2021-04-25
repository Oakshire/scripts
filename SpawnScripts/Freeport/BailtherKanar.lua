--[[
    Script Name    : SpawnScripts/Freeport/BailtherKanar.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:57
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, 277.10, -3.81, -82.38, 2, 5)
MovementLoopAddLocation(NPC, 213.42, -3.80, -82.10, 2, 5)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end