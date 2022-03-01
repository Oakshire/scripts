--[[
    Script Name    : SpawnScripts/Freeport/Shungi.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.01 07:05:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, -120.00, -24.45, -50.65, 2, 10)
MovementLoopAddLocation(NPC, -126.06, -24.45, -50.51, 2, 10)
MovementLoopAddLocation(NPC, -121.94, -24.37, -56.41, 2, 10)
MovementLoopAddLocation(NPC, -115.86, -24.37, -52.77, 2, 10)
MovementLoopAddLocation(NPC, -126.48, -24.45, -49.04, 2, 10)
MovementLoopAddLocation(NPC, -119.29, -24.45, -49.24, 2, 10)
MovementLoopAddLocation(NPC, -126.26, -24.44, -45.72, 2, 10)
MovementLoopAddLocation(NPC, -120.94, -24.44, -42.55, 2, 10)
MovementLoopAddLocation(NPC, -123.67, -24.45, -49.25, 2, 10)
MovementLoopAddLocation(NPC, -128.68, -24.45, -50.32, 2, 10)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end