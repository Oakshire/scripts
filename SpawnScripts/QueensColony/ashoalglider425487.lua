--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425487.lua
	Script Purpose	:	Waypoint Path for ashoalglider425487.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:56 
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
	MovementLoopAddLocation(NPC, 90.04, -11.48, -19.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.1, -11.52, -31.12, 2, 0)
	MovementLoopAddLocation(NPC, 75.43, -10.7, -36.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.33, -11.56, -39.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.33, -11.45, -19.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.49, -11.26, -25.52, 2, 0)
	MovementLoopAddLocation(NPC, 79.13, -11.05, -30.97, 2, 0)
	MovementLoopAddLocation(NPC, 76.52, -11.1, -38.09, 2, 0)
	MovementLoopAddLocation(NPC, 63.59, -10.58, -49.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.12, -10.7, -46.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.61, -10.7, -82.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.72, -11.53, -68.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.5, -10.95, -34.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.58, -11.5, -34.89, 2, math.random(10, 20))
end


