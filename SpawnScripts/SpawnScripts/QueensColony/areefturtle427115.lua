--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427115.lua
	Script Purpose	:	Waypoint Path for areefturtle427115.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:28 
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
	MovementLoopAddLocation(NPC, 19, -11.09, 71.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.15, -11.45, 67.87, 2, 0)
	MovementLoopAddLocation(NPC, 12.49, -12.97, 54.51, 2, 0)
	MovementLoopAddLocation(NPC, 10.05, -13.18, 43.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.07, -13.24, 41.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.46, -12.19, 49.21, 2, 0)
	MovementLoopAddLocation(NPC, 49.54, -12.59, 50.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.02, -12.17, 47.62, 2, 0)
	MovementLoopAddLocation(NPC, 36.62, -12.33, 44.44, 2, 0)
	MovementLoopAddLocation(NPC, 31.32, -12.56, 40.28, 2, 0)
	MovementLoopAddLocation(NPC, 18.75, -12.43, 32.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.21, -12.31, 41.38, 2, 0)
	MovementLoopAddLocation(NPC, 3.59, -11.99, 55.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.51, -12.12, 52.02, 2, 0)
	MovementLoopAddLocation(NPC, -4.85, -11.77, 41.97, 2, 0)
	MovementLoopAddLocation(NPC, -6.76, -12.05, 36.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.26, -11.72, 39.63, 2, 0)
	MovementLoopAddLocation(NPC, 13.52, -11.63, 42.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.89, -11.61, 49.86, 2, 0)
	MovementLoopAddLocation(NPC, 17.84, -10.4, 63.59, 2, 0)
	MovementLoopAddLocation(NPC, 11.47, -10.2, 76.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.86, -11.06, 73.03, 2, 0)
end


