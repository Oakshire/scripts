--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425819.lua
	Script Purpose	:	Waypoint Path for atriggerfish425819.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:43 
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
	MovementLoopAddLocation(NPC, 59.65, -12.54, 5.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.63, -12.9, 11.47, 2, 0)
	MovementLoopAddLocation(NPC, 73.28, -13.47, 18.6, 2, 0)
	MovementLoopAddLocation(NPC, 79.46, -13.12, 27.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.97, -13.06, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, 69.42, -12.46, 40.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.43, -11.84, 35.19, 2, 0)
	MovementLoopAddLocation(NPC, 56.05, -11.13, 27.82, 2, 0)
	MovementLoopAddLocation(NPC, 53.74, -11.33, 20.96, 2, 0)
	MovementLoopAddLocation(NPC, 47.11, -12.86, 15.33, 2, 0)
	MovementLoopAddLocation(NPC, 43.18, -13.12, 14.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.71, -12.92, 29.45, 2, 0)
	MovementLoopAddLocation(NPC, 25.9, -12.43, 37.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.38, -12.51, 21.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.45, -12.86, 24.38, 2, 0)
	MovementLoopAddLocation(NPC, 2.43, -12.95, 46.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.54, -13.19, 40.89, 2, 0)
	MovementLoopAddLocation(NPC, 39.24, -12.9, 40.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.53, -12.98, 30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.15, -13.44, 33.27, 2, 0)
	MovementLoopAddLocation(NPC, 14.89, -13.45, 36.24, 2, 0)
	MovementLoopAddLocation(NPC, 2.31, -12.49, 40.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.29, -13.92, 24.37, 2, 0)
	MovementLoopAddLocation(NPC, 30.09, -13.9, 23.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.61, -13.87, 19.89, 2, 0)
	MovementLoopAddLocation(NPC, 40.34, -13.49, 14.77, 2, 0)
	MovementLoopAddLocation(NPC, 45.63, -12.34, 12.65, 2, 0)
end

