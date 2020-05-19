--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425440.lua
	Script Purpose	:	Waypoint Path for ashoalglider425440.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:20 
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
	MovementLoopAddLocation(NPC, -72.24, -13.11, 254.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.41, -14.38, 263.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.85, -14.9, 260.09, 2, 0)
	MovementLoopAddLocation(NPC, -84.22, -14.49, 258.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.96, -14.84, 260.09, 2, 0)
	MovementLoopAddLocation(NPC, -58.44, -13.55, 267.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.99, -12.21, 247.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.96, -12.49, 255.03, 2, 0)
	MovementLoopAddLocation(NPC, -46.29, -12.41, 271.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.57, -12.42, 260.89, 2, 0)
	MovementLoopAddLocation(NPC, -71.65, -13.6, 252.24, 2, 0)
	MovementLoopAddLocation(NPC, -76.4, -13, 250.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -60.34, -13.12, 257.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.31, -12.44, 264.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.08, -12.45, 280.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.72, -12.38, 267.4, 2, 0)
	MovementLoopAddLocation(NPC, -55.22, -12.17, 262.65, 2, 0)
end

