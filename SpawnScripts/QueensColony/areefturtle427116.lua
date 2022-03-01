--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427116.lua
	Script Purpose	:	Waypoint Path for areefturtle427116.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:49 
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
	MovementLoopAddLocation(NPC, 66.35, -12.71, 30.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.67, -12.68, 43.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.86, -12.61, 34.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.84, -12.63, 21.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.26, -12.44, 25.64, 2, 0)
	MovementLoopAddLocation(NPC, 76.74, -12.68, 32.5, 2, 0)
	MovementLoopAddLocation(NPC, 76.13, -12.68, 40.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.84, -12.72, 45.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.71, -12.43, 37.05, 2, 0)
	MovementLoopAddLocation(NPC, 66.62, -11.77, 31.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.09, -11.97, 28.09, 2, 0)
	MovementLoopAddLocation(NPC, 66.7, -12.12, 20.43, 2, 0)
	MovementLoopAddLocation(NPC, 71.7, -12.03, 14.02, 2, 0)
	MovementLoopAddLocation(NPC, 81.76, -12.45, -2.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.64, -12.71, 21.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.51, -12.47, 27.61, 2, 0)
	MovementLoopAddLocation(NPC, 85.19, -12.36, 34.47, 2, 0)
	MovementLoopAddLocation(NPC, 85.68, -12.45, 43.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.51, -12.52, 38.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.08, -13.01, 27.92, 2, 0)
	MovementLoopAddLocation(NPC, 89.8, -12.62, 18.98, 2, 0)
	MovementLoopAddLocation(NPC, 88.23, -12.73, 13.44, 2, 0)
	MovementLoopAddLocation(NPC, 85.7, -12.9, 10.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.43, -11.56, 21.67, 2, 0)
	MovementLoopAddLocation(NPC, 70.62, -12.3, 27.04, 2, 0)
end

