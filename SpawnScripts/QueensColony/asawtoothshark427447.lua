--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427447.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427447.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:17 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, 76.34, -12.12, 12.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.23, -11.71, 17.99, 2, 0)
	MovementLoopAddLocation(NPC, 36.26, -12.11, 24.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.95, -13.93, 35.47, 2, 0)
	MovementLoopAddLocation(NPC, 13.61, -14.53, 37.98, 2, 0)
	MovementLoopAddLocation(NPC, 7.39, -14.24, 39.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.26, -12.6, 34.1, 2, 0)
	MovementLoopAddLocation(NPC, -0.24, -12.41, 28.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.43, -14.16, 31.15, 2, 0)
	MovementLoopAddLocation(NPC, -22.82, -14.14, 38.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.73, -13.5, 39.29, 2, 0)
	MovementLoopAddLocation(NPC, -6.47, -12.33, 41.12, 2, 0)
	MovementLoopAddLocation(NPC, 2.28, -11.13, 59.53, 2, 0)
	MovementLoopAddLocation(NPC, 7.32, -11.04, 67.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.13, -10.73, 37.47, 2, 0)
	MovementLoopAddLocation(NPC, 79.27, -12.64, 21.83, 2, 0)
	MovementLoopAddLocation(NPC, 84.89, -12.67, 14.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.97, -12.01, 13.94, 2, 0)
end


