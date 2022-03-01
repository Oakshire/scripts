--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427586.lua
	Script Purpose	:	Waypoint Path for aneedlefang427586.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:19 
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
	MovementLoopAddLocation(NPC, 56.56, -12.09, -59.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.6, -10.63, -71.14, 2, 0)
	MovementLoopAddLocation(NPC, 33.33, -11.21, -79.16, 2, 0)
	MovementLoopAddLocation(NPC, 16.54, -12.11, -85.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.14, -12.02, -83.06, 2, 0)
	MovementLoopAddLocation(NPC, 55.56, -11.76, -79.44, 2, 0)
	MovementLoopAddLocation(NPC, 62.07, -12.27, -76.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.96, -12.17, -81.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.08, -11.92, -80.59, 2, 0)
	MovementLoopAddLocation(NPC, 36.24, -11.76, -77.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.87, -11.29, -70.7, 2, 0)
	MovementLoopAddLocation(NPC, 49.94, -11.31, -59.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.4, -12.19, -78.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.79, -12.04, -44.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.47, -11.21, -48.9, 2, 0)
end

