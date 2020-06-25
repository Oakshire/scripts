--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427571.lua
	Script Purpose	:	Waypoint Path for aneedlefang427571.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:08 
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
	MovementLoopAddLocation(NPC, -75.14, -11.17, 13.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.92, -10.3, 14.01, 2, 0)
	MovementLoopAddLocation(NPC, -51.63, -10.24, 16.2, 2, 0)
	MovementLoopAddLocation(NPC, -38.97, -11.02, 16.45, 2, 0)
	MovementLoopAddLocation(NPC, -12.71, -12.23, 17.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.64, -13.19, 22.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.58, -11.68, 15.7, 2, 0)
	MovementLoopAddLocation(NPC, -35.23, -10.18, -7.11, 2, 0)
	MovementLoopAddLocation(NPC, -31.98, -11, -54.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.17, -11.79, -4.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.74, -10.49, -11.43, 2, 0)
	MovementLoopAddLocation(NPC, -34.63, -10.55, -16.82, 2, 0)
	MovementLoopAddLocation(NPC, -44.52, -10.51, -16.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.59, -10.22, -23.34, 2, 0)
	MovementLoopAddLocation(NPC, -47.01, -10.29, -30.61, 2, 0)
	MovementLoopAddLocation(NPC, -46.68, -10.63, -40.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.53, -10.39, -29.36, 2, 0)
	MovementLoopAddLocation(NPC, -57.66, -10.3, -16.33, 2, 0)
	MovementLoopAddLocation(NPC, -60.87, -10.3, -10.91, 2, 0)
end


