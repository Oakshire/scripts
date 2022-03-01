--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427440.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427440.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:27 
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
	MovementLoopAddLocation(NPC, 72.33, -10.7, 21.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.06, -10.7, 31.34, 2, 0)
	MovementLoopAddLocation(NPC, 47.97, -10.7, 42.48, 2, 0)
	MovementLoopAddLocation(NPC, 31.4, -10.7, 53.78, 2, 0)
	MovementLoopAddLocation(NPC, 12.57, -10.7, 71.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.51, -10.7, 59.03, 2, 0)
	MovementLoopAddLocation(NPC, 60.69, -11.02, 26.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.7, -11.43, 23.65, 2, 0)
	MovementLoopAddLocation(NPC, 36.28, -12.81, 20.43, 2, 0)
	MovementLoopAddLocation(NPC, 30.82, -13.14, 20.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.38, -12.39, 29.38, 2, 0)
	MovementLoopAddLocation(NPC, 37.98, -12.11, 39.9, 2, 0)
	MovementLoopAddLocation(NPC, 43.89, -11.72, 49.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.88, -11.76, 54.94, 2, 0)
	MovementLoopAddLocation(NPC, 29.4, -11.88, 58.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.86, -11.16, 62.85, 2, 0)
	MovementLoopAddLocation(NPC, 7.96, -11.02, 70.83, 2, 0)
	MovementLoopAddLocation(NPC, -1.58, -10.7, 74.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.46, -10.7, 43.95, 2, 0)
	MovementLoopAddLocation(NPC, 56.64, -10.7, 32.52, 2, 0)
end


