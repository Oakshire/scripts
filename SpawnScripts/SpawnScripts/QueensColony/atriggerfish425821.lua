--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425821.lua
	Script Purpose	:	Waypoint Path for atriggerfish425821.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:48 
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
	MovementLoopAddLocation(NPC, 15.71, -12.45, 34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.42, -13.37, 24.96, 2, 0)
	MovementLoopAddLocation(NPC, 12.01, -13.9, 20.69, 2, 0)
	MovementLoopAddLocation(NPC, 9.79, -13.99, 18.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.61, -13.23, 20.48, 2, 0)
	MovementLoopAddLocation(NPC, 19.66, -12.86, 20.18, 2, 0)
	MovementLoopAddLocation(NPC, 24.69, -12.73, 17.71, 2, 0)
	MovementLoopAddLocation(NPC, 32.63, -12.76, 12.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.65, -12.47, 16.16, 2, 0)
	MovementLoopAddLocation(NPC, 23.41, -12.89, 20.99, 2, 0)
	MovementLoopAddLocation(NPC, 19.25, -12.36, 31.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.48, -12.46, 36.32, 2, 0)
	MovementLoopAddLocation(NPC, 37.9, -12.47, 40.01, 2, 0)
	MovementLoopAddLocation(NPC, 41.86, -12.16, 43.69, 2, 0)
	MovementLoopAddLocation(NPC, 49.44, -12, 46.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.56, -11.48, 52.51, 2, 0)
	MovementLoopAddLocation(NPC, 29.82, -12.08, 63.06, 2, 0)
	MovementLoopAddLocation(NPC, 25.78, -11.98, 65.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.24, -12.14, 54.69, 2, 0)
	MovementLoopAddLocation(NPC, 11.62, -12.48, 39.38, 2, 0)
	MovementLoopAddLocation(NPC, 7.92, -12.46, 35.15, 2, 0)
	MovementLoopAddLocation(NPC, 5.47, -12.5, 34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.65, -13.16, 34.79, 2, 0)
	MovementLoopAddLocation(NPC, -5.3, -13.96, 35.8, 2, 0)
	MovementLoopAddLocation(NPC, -7.83, -13.86, 40.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.69, -13.4, 39.04, 2, 0)
end

