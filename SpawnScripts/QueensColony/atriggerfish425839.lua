--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425839.lua
	Script Purpose	:	Waypoint Path for atriggerfish425839.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:24 
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
	MovementLoopAddLocation(NPC, 44.05, -12, 58.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.72, -11.43, 59.8, 2, 0)
	MovementLoopAddLocation(NPC, 69.9, -11.63, 64.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.07, -12.1, 58.01, 2, 0)
	MovementLoopAddLocation(NPC, 84.58, -12.39, 49.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.86, -12.27, 48.23, 2, 0)
	MovementLoopAddLocation(NPC, 62.52, -12.83, 49.18, 2, 0)
	MovementLoopAddLocation(NPC, 58.32, -12.86, 49.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.67, -11.38, 42.68, 2, 0)
	MovementLoopAddLocation(NPC, 40.62, -11.41, 35.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.01, -11.27, 41.34, 2, 0)
	MovementLoopAddLocation(NPC, 63.63, -11.34, 46.93, 2, 0)
	MovementLoopAddLocation(NPC, 69.06, -11.92, 48.24, 2, 0)
	MovementLoopAddLocation(NPC, 74.35, -12.01, 51.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.86, -11.49, 44.83, 2, 0)
	MovementLoopAddLocation(NPC, 71, -10.16, 21.82, 2, 0)
	MovementLoopAddLocation(NPC, 69.55, -11.65, 17.39, 2, 0)
	MovementLoopAddLocation(NPC, 69.46, -12.07, 15.72, 2, 0)
	MovementLoopAddLocation(NPC, 71.05, -12.36, 13.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.24, -12.8, 17.02, 2, 0)
	MovementLoopAddLocation(NPC, 84.46, -12.97, 20.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.84, -12.45, 30.37, 2, 0)
	MovementLoopAddLocation(NPC, 85.35, -12.34, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 83.78, -12.25, 41.09, 2, 0)
	MovementLoopAddLocation(NPC, 74.88, -11.82, 47.76, 2, math.random(10, 20))
end

