--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427439.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427439.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:19:56 
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
	MovementLoopAddLocation(NPC, -11.64, -12.64, 36.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.86, -13.95, 33.16, 2, 0)
	MovementLoopAddLocation(NPC, -20.18, -14.18, 31.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.84, -13.14, 32.88, 2, 0)
	MovementLoopAddLocation(NPC, 7.12, -13.22, 32.02, 2, 0)
	MovementLoopAddLocation(NPC, 26.07, -13.39, 25.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.58, -12.78, 38.2, 2, 0)
	MovementLoopAddLocation(NPC, 30.02, -12.19, 46.36, 2, 0)
	MovementLoopAddLocation(NPC, 36.23, -11.58, 56.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.08, -12.47, 34.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.69, -11.54, 47, 2, 0)
	MovementLoopAddLocation(NPC, 55.13, -11.15, 60.52, 2, 0)
	MovementLoopAddLocation(NPC, 56.74, -11.51, 69.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.85, -10.7, 68.57, 2, 0)
	MovementLoopAddLocation(NPC, 33.38, -10.7, 67.84, 2, 0)
	MovementLoopAddLocation(NPC, 9.29, -10.66, 70.78, 2, 0)
	MovementLoopAddLocation(NPC, 1.22, -10.7, 70.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.61, -10.7, 60.24, 2, 0)
	MovementLoopAddLocation(NPC, -5.32, -11.4, 47.36, 2, 0)
end


