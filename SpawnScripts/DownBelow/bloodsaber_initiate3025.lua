--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_initiate3025.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 11:04:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 9.84, -4, -158.65, 2, 5)
	MovementLoopAddLocation(NPC, 7.95, -4, -155.34, 2, 5)
	MovementLoopAddLocation(NPC, 8.12, -1.36, -149.05, 2, 5)
	MovementLoopAddLocation(NPC, 7.26, 0, -144.17, 2, 5)
	MovementLoopAddLocation(NPC, 4.13, -4, -160.14, 2, 5)
	MovementLoopAddLocation(NPC, 7.66, -3.42, -153.22, 2, 5)
	MovementLoopAddLocation(NPC, 6.53, 0.23, -143.17, 2, 5)
	MovementLoopAddLocation(NPC, 8.64, -1.42, -149.31, 2, 5)
	MovementLoopAddLocation(NPC, 7.84, 0, -146.1, 2, 5)
	MovementLoopAddLocation(NPC, 6.24, -4, -159.18, 2, 5)
	MovementLoopAddLocation(NPC, 7.67, -4, -158.28, 2, 5)
end
