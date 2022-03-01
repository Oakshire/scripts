--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425818.lua
	Script Purpose	:	Waypoint Path for atriggerfish425818.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:22 
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
	MovementLoopAddLocation(NPC, 2.31, -11.01, 74.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.45, -11.32, 70.21, 2, 0)
	MovementLoopAddLocation(NPC, -8.53, -11.82, 48.16, 2, 0)
	MovementLoopAddLocation(NPC, -11.23, -12.34, 43.06, 2, 0)
	MovementLoopAddLocation(NPC, -12.29, -12.38, 39.84, 2, 0)
	MovementLoopAddLocation(NPC, -17.97, -11.93, 30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.24, -10.24, 42.51, 2, 0)
	MovementLoopAddLocation(NPC, -12.57, -10.51, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, -12.11, -10.41, 56, 2, 0)
	MovementLoopAddLocation(NPC, -6.96, -10.99, 64.68, 2, 0)
	MovementLoopAddLocation(NPC, -4.49, -10.98, 68.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.3, -11.3, 67.81, 2, 0)
	MovementLoopAddLocation(NPC, 27.43, -11.21, 55.28, 2, 0)
	MovementLoopAddLocation(NPC, 43.68, -11.48, 45.63, 2, 0)
	MovementLoopAddLocation(NPC, 49.41, -11.76, 43.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.05, -11.53, 50.78, 2, 0)
	MovementLoopAddLocation(NPC, 52.07, -10.37, 55.38, 2, 0)
	MovementLoopAddLocation(NPC, 51.98, -10.29, 63.82, 2, 0)
	MovementLoopAddLocation(NPC, 52.42, -10.53, 68.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.96, -11.98, 37.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.57, -12.98, 53.39, 2, 0)
	MovementLoopAddLocation(NPC, 12.51, -12.94, 59.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.12, -12.46, 62.2, 2, 0)
	MovementLoopAddLocation(NPC, 6.06, -11.64, 67.03, 2, 0)
	MovementLoopAddLocation(NPC, 5.95, -11.5, 69.63, 2, 0)
end

