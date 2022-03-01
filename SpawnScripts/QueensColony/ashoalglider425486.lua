--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425486.lua
	Script Purpose	:	Waypoint Path for ashoalglider425486.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:37 
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
	MovementLoopAddLocation(NPC, 63.67, -11.46, -56.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.66, -11.42, -76.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.86, -11.06, -59.48, 2, 0)
	MovementLoopAddLocation(NPC, 63.65, -10.64, -54.47, 2, 0)
	MovementLoopAddLocation(NPC, 59.73, -10.7, -47.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.07, -11.52, -41.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.33, -11.77, -45.18, 2, 0)
	MovementLoopAddLocation(NPC, 66.11, -11.51, -57.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.66, -11.56, -51.42, 2, 0)
	MovementLoopAddLocation(NPC, 75.85, -11.58, -41.79, 2, 0)
	MovementLoopAddLocation(NPC, 80.93, -11.81, -31.81, 2, 0)
	MovementLoopAddLocation(NPC, 88.14, -12.57, -18.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.68, -12.44, -33.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.41, -11.41, -33.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.05, -11.6, -42.55, 2, 0)
	MovementLoopAddLocation(NPC, 68.4, -11.55, -49.46, 2, 0)
end


