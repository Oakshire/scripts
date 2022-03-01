--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427052.lua
	Script Purpose	:	Waypoint Path for areefturtle427052.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:10 
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
	MovementLoopAddLocation(NPC, 27.75, -11.78, -82.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.02, -11.73, -82.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.89, -11.76, -80.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.14, -11.81, -62.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.31, -11.77, -70.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.03, -11.23, -81.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.97, -10.34, -73.51, 2, 0)
	MovementLoopAddLocation(NPC, 74.44, -10.25, -57.06, 2, 0)
	MovementLoopAddLocation(NPC, 77.09, -10.21, -46.75, 2, 0)
	MovementLoopAddLocation(NPC, 87.32, -12.29, -36.63, 2, 0)
	MovementLoopAddLocation(NPC, 92.36, -12.73, -35.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.23, -11.73, -37.62, 2, 0)
	MovementLoopAddLocation(NPC, 77.48, -12.02, -41.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.72, -11.57, -48.2, 2, 0)
	MovementLoopAddLocation(NPC, 59.35, -11.07, -52.32, 2, 0)
	MovementLoopAddLocation(NPC, 53.92, -10.62, -54.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.98, -10.24, -63.5, 2, 0)
	MovementLoopAddLocation(NPC, 36.86, -10.2, -72.89, 2, 0)
	MovementLoopAddLocation(NPC, 32.26, -10.41, -77.81, 2, 0)
	MovementLoopAddLocation(NPC, 25.38, -11.39, -82.12, 2, 0)
	MovementLoopAddLocation(NPC, 20.97, -11.67, -85.74, 2, math.random(10, 20))
end


