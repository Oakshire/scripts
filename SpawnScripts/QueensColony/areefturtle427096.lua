--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427096.lua
	Script Purpose	:	Waypoint Path for areefturtle427096.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:52 
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
	MovementLoopAddLocation(NPC, 35.7, -12.26, 27.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.65, -13.67, 37.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.97, -12.61, 27.04, 2, 0)
	MovementLoopAddLocation(NPC, 41.87, -12.3, 24.03, 2, 0)
	MovementLoopAddLocation(NPC, 47.01, -11.72, 21.95, 2, 0)
	MovementLoopAddLocation(NPC, 50.7, -11.73, 21.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.14, -12.14, 22.64, 2, 0)
	MovementLoopAddLocation(NPC, 35.56, -12.9, 27.14, 2, 0)
	MovementLoopAddLocation(NPC, -0.8, -12.75, 49.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.98, -13.23, 39.99, 2, 0)
	MovementLoopAddLocation(NPC, 29.18, -12.29, 33.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.91, -11.71, 37.39, 2, 0)
	MovementLoopAddLocation(NPC, 41.76, -10.36, 39.6, 2, 0)
	MovementLoopAddLocation(NPC, 46.24, -10.2, 39.86, 2, 0)
	MovementLoopAddLocation(NPC, 57.61, -12.07, 42.94, 2, 0)
	MovementLoopAddLocation(NPC, 63.09, -12.5, 43.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.16, -11.72, 65.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.74, -10.37, 59.01, 2, 0)
	MovementLoopAddLocation(NPC, 47.61, -10.45, 42.34, 2, 0)
	MovementLoopAddLocation(NPC, 44.43, -11.71, 34.71, 2, 0)
	MovementLoopAddLocation(NPC, 40.19, -11.98, 32.29, 2, math.random(10, 20))
end


