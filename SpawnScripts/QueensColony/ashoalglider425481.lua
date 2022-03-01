--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425481.lua
	Script Purpose	:	Waypoint Path for ashoalglider425481.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:54 
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
	MovementLoopAddLocation(NPC, 68.38, -11.48, -61.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.94, -11.14, -49.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.99, -11.53, -80.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.29, -11.48, -64.24, 2, 0)
	MovementLoopAddLocation(NPC, 55.87, -11.04, -59.2, 2, 0)
	MovementLoopAddLocation(NPC, 58.46, -10.7, -50.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.03, -11.02, -57.87, 2, 0)
	MovementLoopAddLocation(NPC, 53.74, -11.43, -61.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.86, -11.49, -80.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.7, -10.72, -55.75, 2, 0)
	MovementLoopAddLocation(NPC, 74.84, -10.7, -50.71, 2, 0)
	MovementLoopAddLocation(NPC, 79.83, -11.04, -37.68, 2, 0)
	MovementLoopAddLocation(NPC, 85.33, -11.46, -29.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.12, -12.5, -39.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.86, -11.68, -40.02, 2, 0)
	MovementLoopAddLocation(NPC, 99.59, -11.44, -39.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.09, -11.09, -49.08, 2, 0)
	MovementLoopAddLocation(NPC, 70.86, -11.43, -52.95, 2, 0)
	MovementLoopAddLocation(NPC, 69.17, -11.63, -56.95, 2, 0)
end

