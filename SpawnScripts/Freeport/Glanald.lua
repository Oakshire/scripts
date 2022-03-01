--[[
    Script Name    : SpawnScripts/Freeport/Glanald.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 10:07:20
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
    SetTempVariable(NPC, "IsHailed", "false")
	MovementLoopAddLocation(NPC, 67.58, -20.74, 24.58, 2, 0)
	MovementLoopAddLocation(NPC, 65.22, -20.76, 66.94, 2, 0)
	MovementLoopAddLocation(NPC, 80.22, -20.74, 92.62, 2, 0)
	MovementLoopAddLocation(NPC, 79.82, -20.74, 99.10, 2, 0)
	MovementLoopAddLocation(NPC, 80.22, -20.74, 92.62, 2, 5)
	MovementLoopAddLocation(NPC, 65.22, -20.76, 66.94, 2, 0)
	MovementLoopAddLocation(NPC, 67.58, -20.74, 24.58, 2, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end
