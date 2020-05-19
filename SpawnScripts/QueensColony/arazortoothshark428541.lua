--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428541.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428541.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:38 
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
	MovementLoopAddLocation(NPC, 26.71, -11.67, 68.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.07, -11.47, 64.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.92, -11.23, 66.48, 2, 0)
	MovementLoopAddLocation(NPC, 56.9, -11.26, 67.33, 2, 0)
	MovementLoopAddLocation(NPC, 69.01, -11.67, 68.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.17, -11.37, 78.83, 2, 0)
	MovementLoopAddLocation(NPC, 54.98, -11.78, 92.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.16, -10.76, 89.43, 2, 0)
	MovementLoopAddLocation(NPC, 34.83, -10.7, 85.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.25, -11.41, 83.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.73, -10.73, 76.73, 2, 0)
	MovementLoopAddLocation(NPC, 27.09, -12.29, 47.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.5, -11.73, 59.02, 2, 0)
	MovementLoopAddLocation(NPC, 45.31, -11.52, 66.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.19, -11.61, 49.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.62, -11.16, 56.51, 2, 0)
	MovementLoopAddLocation(NPC, 64.88, -11.49, 68.48, 2, math.random(10, 20))
end


