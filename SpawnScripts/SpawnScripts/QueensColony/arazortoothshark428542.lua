--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428542.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428542.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:58 
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
	MovementLoopAddLocation(NPC, 4.76, -12.29, 31.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.17, -12.16, 46.05, 2, 0)
	MovementLoopAddLocation(NPC, 4.47, -11.76, 61.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.98, -12, 53.98, 2, 0)
	MovementLoopAddLocation(NPC, -4.6, -13, 22.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.6, -13.22, 25.88, 2, 0)
	MovementLoopAddLocation(NPC, -19.62, -13.1, 35.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.12, -11.89, 42.51, 2, 0)
	MovementLoopAddLocation(NPC, 7.94, -11.9, 44.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.33, -13.07, 52.01, 2, 0)
	MovementLoopAddLocation(NPC, 3.9, -13, 59.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.95, -12.06, 53.29, 2, 0)
	MovementLoopAddLocation(NPC, 9.18, -12.33, 45.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.42, -12.33, 61.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.6, -13.12, 47.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.82, -12.3, 39.37, 2, 0)
	MovementLoopAddLocation(NPC, 1.29, -12.5, 37.92, 2, math.random(10, 20))
end


