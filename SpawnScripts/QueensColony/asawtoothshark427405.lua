--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427405.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427405.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:02 
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
	MovementLoopAddLocation(NPC, 89.9, -12.6, -32.70, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.73, -12.52, -20.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.85, -12.18, -26.88, 2, 0)
	MovementLoopAddLocation(NPC, 67.47, -10.73, -45, 2, 0)
	MovementLoopAddLocation(NPC, 57.46, -10.78, -53.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.85, -10.69, -66.15, 2, 0)
	MovementLoopAddLocation(NPC, 43.32, -11.16, -73.47, 2, 0)
	MovementLoopAddLocation(NPC, 36.25, -11.51, -82.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.02, -11.71, -79.92, 2, 0)
	MovementLoopAddLocation(NPC, 75.33, -11.73, -72.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.92, -11.75, -65.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.46, -11.9, -80.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.37, -11.3, -82.71, 2, 0)
	MovementLoopAddLocation(NPC, 34.12, -11.06, -85.83, 2, 0)
	MovementLoopAddLocation(NPC, 17.61, -11.68, -88.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.48, -11.6, -73.82, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -11.25, -55.51, 2, 0)
	MovementLoopAddLocation(NPC, 78.33, -10.94, -45.89, 2, 0)
	MovementLoopAddLocation(NPC, 88.14, -11.24, -39.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.19, -11.59, -30.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.76, -12.5, -43.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.68, -12.11, -42.28, 2, math.random(10, 20))
end


