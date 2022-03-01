--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427413.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427413.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:42 
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
	MovementLoopAddLocation(NPC, 22.03, -13.64, -31.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.95, -14.56, -15.31, 2, 0)
	MovementLoopAddLocation(NPC, 27.01, -13.62, -9.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.54, -13.78, -16.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.28, -12.81, -22.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.61, -12.95, -28.24, 2, 0)
	MovementLoopAddLocation(NPC, 31.74, -12.81, -32.02, 2, 0)
	MovementLoopAddLocation(NPC, 14.04, -12.51, -44.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.57, -11.63, -48.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.98, -11.86, -37.24, 2, 0)
	MovementLoopAddLocation(NPC, 22.29, -14.09, -26.06, 2, 0)
	MovementLoopAddLocation(NPC, 23.05, -14.57, -20.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.99, -13.44, -32.62, 2, 0)
	MovementLoopAddLocation(NPC, 14.47, -12.39, -41.38, 2, 0)
	MovementLoopAddLocation(NPC, 9.57, -12.12, -47.08, 2, 0)
	MovementLoopAddLocation(NPC, 2.46, -12.19, -53.77, 2, 0)
	MovementLoopAddLocation(NPC, -2.74, -12.54, -61.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.15, -12.12, -55.23, 2, 0)
	MovementLoopAddLocation(NPC, 14.69, -12.33, -41.29, 2, 0)
end

