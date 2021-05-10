--[[
    Script Name    : SpawnScripts/Freeport/Krelnath.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:52
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
MovementLoopAddLocation(NPC, -77.65, -25.03, 234.23, 2, 0)
MovementLoopAddLocation(NPC, -69.51, -25.00, 268.11, 2, 10, "", 192.28)
MovementLoopAddLocation(NPC, -77.65, -25.03, 234.23, 2, 0)
MovementLoopAddLocation(NPC, -98.00, -24.75, 222.63, 2, 10, "", 69.45)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
