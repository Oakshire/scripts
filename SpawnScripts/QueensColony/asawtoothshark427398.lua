--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427398.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427398.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:50 
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
	MovementLoopAddLocation(NPC, 49.83, -11.92, -68.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.37, -12.08, -68.56, 2, 0)
	MovementLoopAddLocation(NPC, 70, -12.18, -72.67, 2, 0)
	MovementLoopAddLocation(NPC, 77.1, -11.99, -75.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.51, -11.94, -72.62, 2, 0)
	MovementLoopAddLocation(NPC, 68.95, -11.29, -56.03, 2, 0)
	MovementLoopAddLocation(NPC, 67.47, -11.87, -50.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.63, -11.85, -43.26, 2, 0)
	MovementLoopAddLocation(NPC, 79.03, -11.91, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, 86.9, -12.46, -29.4, 2, 0)
	MovementLoopAddLocation(NPC, 91.72, -12.89, -24.68, 2, 0)
	MovementLoopAddLocation(NPC, 96.32, -12.66, -19.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.64, -12.33, -34.39, 2, 0)
	MovementLoopAddLocation(NPC, 80.26, -12.5, -39.28, 2, 0)
	MovementLoopAddLocation(NPC, 77.57, -12.47, -42.56, 2, 0)
	MovementLoopAddLocation(NPC, 74.96, -11.84, -45.87, 2, 0)
	MovementLoopAddLocation(NPC, 69.43, -11.85, -50.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.48, -12.01, -58.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.33, -11.77, -79.6, 2, math.random(10, 20))
end


