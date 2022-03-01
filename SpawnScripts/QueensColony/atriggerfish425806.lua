--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425806.lua
	Script Purpose	:	Waypoint Path for atriggerfish425806.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:27 
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
	MovementLoopAddLocation(NPC, 16.24, -12.07, -25.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.13, -12.45, -23.91, 2, 0)
	MovementLoopAddLocation(NPC, 20.34, -12.68, -19.87, 2, 0)
	MovementLoopAddLocation(NPC, 26.2, -12.29, -14.26, 2, 0)
	MovementLoopAddLocation(NPC, 32.73, -12.07, -10.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.45, -14.06, -12.66, 2, 0)
	MovementLoopAddLocation(NPC, 31.27, -15.67, -14.11, 2, 0)
	MovementLoopAddLocation(NPC, 29.2, -15.72, -13.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.83, -14.42, -13.6, 2, 0)
	MovementLoopAddLocation(NPC, 42.41, -12.57, -14.95, 2, 0)
	MovementLoopAddLocation(NPC, 49.8, -11.9, -16.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.87, -12.94, -33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.6, -12.62, -23.56, 2, 0)
	MovementLoopAddLocation(NPC, 52.89, -12.86, -21.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.99, -12.36, -25.97, 2, 0)
	MovementLoopAddLocation(NPC, 44.76, -11.7, -38.88, 2, 0)
	MovementLoopAddLocation(NPC, 43.1, -11.45, -41.44, 2, 0)
	MovementLoopAddLocation(NPC, 38.98, -11.03, -45.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.45, -11.11, -40.03, 2, 0)
	MovementLoopAddLocation(NPC, 28.63, -11.05, -11.66, 2, 0)
	MovementLoopAddLocation(NPC, 24.21, -12.85, 10.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.51, -12.88, 5.32, 2, 0)
	MovementLoopAddLocation(NPC, 20.13, -12.94, -16.89, 2, 0)
end

