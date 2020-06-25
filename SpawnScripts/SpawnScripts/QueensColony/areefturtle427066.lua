--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427066.lua
	Script Purpose	:	Waypoint Path for areefturtle427066.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:01 
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
	MovementLoopAddLocation(NPC, 58.72, -11.73, -62.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.33, -11.8, -77.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.57, -11.73, -64.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.33, -11.9, -63.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.68, -11.75, -52.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.54, -12.19, -42.46, 2, 0)
	MovementLoopAddLocation(NPC, 86.11, -12.28, -33.82, 2, 0)
	MovementLoopAddLocation(NPC, 91.78, -12.91, -26.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.26, -11.46, -36.14, 2, 0)
	MovementLoopAddLocation(NPC, 77.38, -11.55, -38.19, 2, 0)
	MovementLoopAddLocation(NPC, 74.79, -11.61, -41.58, 2, 0)
	MovementLoopAddLocation(NPC, 62.7, -10.7, -52.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.03, -11.58, -49.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.58, -11.09, -52.15, 2, 0)
	MovementLoopAddLocation(NPC, 62.25, -10.36, -55.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.76, -11.4, -55.39, 2, 0)
	MovementLoopAddLocation(NPC, 66.4, -11.34, -56.64, 2, 0)
	MovementLoopAddLocation(NPC, 73.33, -11.39, -56.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.4, -12.15, -64.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.32, -11.88, -77.54, 2, 0)
	MovementLoopAddLocation(NPC, 53.88, -11.56, -82.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.54, -11.79, -82.09, 2, 0)
	MovementLoopAddLocation(NPC, 30.08, -11.85, -84.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.28, -11.87, -77.23, 2, 0)
	MovementLoopAddLocation(NPC, 49.03, -11.94, -70.81, 2, 0)
end

