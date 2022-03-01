--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425780.lua
	Script Purpose	:	Waypoint Path for atriggerfish425780.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:48 
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
	MovementLoopAddLocation(NPC, 70.73, -11.95, -53.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.39, -11.44, -58.21, 2, 0)
	MovementLoopAddLocation(NPC, 53.57, -11.15, -62.91, 2, 0)
	MovementLoopAddLocation(NPC, 50.26, -11.16, -64.51, 2, 0)
	MovementLoopAddLocation(NPC, 44.57, -11.04, -68.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.44, -12.03, -80.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.93, -11.99, -76.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.78, -11.72, -71.93, 2, 0)
	MovementLoopAddLocation(NPC, 46.02, -11.4, -71.14, 2, 0)
	MovementLoopAddLocation(NPC, 44.91, -11.03, -70.25, 2, 0)
	MovementLoopAddLocation(NPC, 44.91, -11.04, -68.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.63, -11.36, -32.38, 2, 0)
	MovementLoopAddLocation(NPC, 85.36, -11.97, -25.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.45, -12.11, -27.7, 2, 0)
	MovementLoopAddLocation(NPC, 98.52, -11.61, -41.34, 2, 0)
	MovementLoopAddLocation(NPC, 99.03, -11.09, -42.65, 2, 0)
	MovementLoopAddLocation(NPC, 98.11, -11.09, -43.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.36, -11.92, -39.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.39, -11.73, -44.2, 2, 0)
	MovementLoopAddLocation(NPC, 80.05, -11.41, -46.5, 2, 0)
	MovementLoopAddLocation(NPC, 76.96, -11.37, -48.42, 2, 0)
	MovementLoopAddLocation(NPC, 74.7, -11.57, -49.66, 2, 0)
	MovementLoopAddLocation(NPC, 72.88, -11.77, -51.19, 2, 0)
end

