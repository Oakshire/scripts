--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427450.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427450.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:30 
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
	MovementLoopAddLocation(NPC, 42.47, -11.78, 55.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.92, -11.62, 46.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.45, -12.47, 47.69, 2, 0)
	MovementLoopAddLocation(NPC, 66.31, -12.57, 48.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.35, -11.83, 52.43, 2, 0)
	MovementLoopAddLocation(NPC, 58.73, -11.38, 56.24, 2, 0)
	MovementLoopAddLocation(NPC, 53.63, -11.26, 70.5, 2, 0)
	MovementLoopAddLocation(NPC, 50.42, -11.45, 74.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.77, -11.52, 77.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.74, -11.71, 65.49, 2, 0)
	MovementLoopAddLocation(NPC, 84.18, -12.23, 50.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.55, -12.89, 41.35, 2, 0)
	MovementLoopAddLocation(NPC, 75.61, -13.07, 35.79, 2, 0)
	MovementLoopAddLocation(NPC, 75.41, -13.27, 24.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.62, -12.08, 31.27, 2, 0)
	MovementLoopAddLocation(NPC, 60.27, -12.66, 45.57, 2, 0)
	MovementLoopAddLocation(NPC, 56.74, -12.66, 51.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.48, -12.01, 53.18, 2, 0)
	MovementLoopAddLocation(NPC, 40.22, -11.87, 55.03, 2, 0)
	MovementLoopAddLocation(NPC, 34.22, -11.81, 63.71, 2, math.random(10, 20))
end


