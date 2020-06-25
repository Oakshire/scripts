--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427572.lua
	Script Purpose	:	Waypoint Path for aneedlefang427572.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:29 
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
	MovementLoopAddLocation(NPC, -30.39, -12.08, -21.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.81, -10.56, -16.63, 2, 0)
	MovementLoopAddLocation(NPC, -84.43, -10.3, 10.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.39, -10.59, -3.71, 2, 0)
	MovementLoopAddLocation(NPC, -52.98, -10.3, -18.83, 2, 0)
	MovementLoopAddLocation(NPC, -44.95, -11.42, -34.46, 2, 0)
	MovementLoopAddLocation(NPC, -40.05, -12.08, -38.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.36, -10.42, -49.04, 2, 0)
	MovementLoopAddLocation(NPC, -39.42, -10.41, -60.48, 2, 0)
	MovementLoopAddLocation(NPC, -40.6, -12.15, -70.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.55, -10.49, -72.28, 2, 0)
	MovementLoopAddLocation(NPC, -22.09, -10.22, -73.77, 2, 0)
	MovementLoopAddLocation(NPC, -12.21, -10.28, -69.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.48, -11.2, -63.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.55, -11.16, -53.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.39, -10.3, -50.66, 2, 0)
	MovementLoopAddLocation(NPC, -63.25, -11.07, -49.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.45, -10.2, -48.74, 2, 0)
	MovementLoopAddLocation(NPC, -33.1, -10.44, -46.72, 2, 0)
	MovementLoopAddLocation(NPC, -22.3, -11.35, -44.71, 2, 0)
	MovementLoopAddLocation(NPC, -13.01, -11.86, -40.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.99, -12.03, -47.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.66, -11.12, -38.52, 2, 0)
	MovementLoopAddLocation(NPC, -5.4, -11.27, -14.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.62, -11.12, -18.64, 2, 0)
end

