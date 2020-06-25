--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427589.lua
	Script Purpose	:	Waypoint Path for aneedlefang427589.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:00 
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
	MovementLoopAddLocation(NPC, -49.88, -10.3, -47.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.37, -10.3, -51.32, 2, 0)
	MovementLoopAddLocation(NPC, -42.65, -12.06, -60.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.98, -10.68, -47.72, 2, 0)
	MovementLoopAddLocation(NPC, -26.43, -10.36, -18.77, 2, 0)
	MovementLoopAddLocation(NPC, -22.92, -12.06, -8.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.67, -11.23, -4.4, 2, 0)
	MovementLoopAddLocation(NPC, -32.8, -11.08, 4.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.24, -10.3, 0.61, 2, 0)
	MovementLoopAddLocation(NPC, -45.94, -10.44, -39.02, 2, 0)
	MovementLoopAddLocation(NPC, -47.35, -10.9, -44.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.73, -10.33, -46.13, 2, 0)
	MovementLoopAddLocation(NPC, -18.74, -10.42, -53.31, 2, 0)
	MovementLoopAddLocation(NPC, -7.42, -11.95, -57.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.41, -11.17, -54.2, 2, 0)
	MovementLoopAddLocation(NPC, -15.61, -11.02, -47.49, 2, 0)
	MovementLoopAddLocation(NPC, -20.28, -11.66, -37.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.4, -11.64, -41.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.35, -11.78, -40.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.81, -11.19, -47.18, 2, 0)
	MovementLoopAddLocation(NPC, -16.31, -10.3, -56.25, 2, 0)
	MovementLoopAddLocation(NPC, -10.17, -10.98, -61.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.79, -10.31, -59.73, 2, 0)
	MovementLoopAddLocation(NPC, -64.01, -10.42, -47.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.07, -10.3, -36.45, 2, 0)
	MovementLoopAddLocation(NPC, -73.21, -10.3, -18.37, 2, 0)
	MovementLoopAddLocation(NPC, -92.02, -12.08, -5.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.09, -10.3, 11.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.4, -11.06, 13.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.16, -10.3, 7.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.65, -10.3, -36.43, 2, 0)
end
