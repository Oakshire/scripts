--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425832.lua
	Script Purpose	:	Waypoint Path for atriggerfish425832.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:05 
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
	MovementLoopAddLocation(NPC, 106.57, -11.9, 21.41, 2, 4)
	MovementLoopAddLocation(NPC, 93, -12.12, 19.45, 2, 0)
	MovementLoopAddLocation(NPC, 84.26, -12.68, 16.34, 2, 4)
	MovementLoopAddLocation(NPC, 77.02, -11.59, 12.57, 2, 0)
	MovementLoopAddLocation(NPC, 73.58, -11.54, 9.42, 2, 0)
	MovementLoopAddLocation(NPC, 69.36, -12.06, 7, 2, 0)
	MovementLoopAddLocation(NPC, 66.09, -12.02, 6.96, 2, 4)
	MovementLoopAddLocation(NPC, 68.82, -14.36, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, 68.47, -15.45, -2.4, 2, 0)
	MovementLoopAddLocation(NPC, 66.45, -15.54, -3.04, 2, 4)
	MovementLoopAddLocation(NPC, 64.4, -13.93, 6.91, 2, 0)
	MovementLoopAddLocation(NPC, 62.3, -12.41, 12.44, 2, 0)
	MovementLoopAddLocation(NPC, 61.4, -12.23, 16.61, 2, 0)
	MovementLoopAddLocation(NPC, 58.79, -11.83, 21.22, 2, 0)
	MovementLoopAddLocation(NPC, 57.15, -11.9, 22.57, 2, 4)
	MovementLoopAddLocation(NPC, 49.7, -11.44, 25.59, 2, 0)
	MovementLoopAddLocation(NPC, 40.91, -12.29, 31.34, 2, 0)
	MovementLoopAddLocation(NPC, 31.44, -12.49, 34.98, 2, 0)
	MovementLoopAddLocation(NPC, 26.12, -12.52, 39.91, 2, 4)
	MovementLoopAddLocation(NPC, 27.77, -13.46, 30.65, 2, 0)
	MovementLoopAddLocation(NPC, 28.41, -13.4, 26.47, 2, 0)
	MovementLoopAddLocation(NPC, 27.31, -13.45, 22.66, 2, 4)
	MovementLoopAddLocation(NPC, 28, -12.84, 19.7, 2, 0)
	MovementLoopAddLocation(NPC, 28.02, -13.01, 11.21, 2, 4)
	MovementLoopAddLocation(NPC, 40.01, -13.05, 14.42, 2, 0)
	MovementLoopAddLocation(NPC, 55.2, -13.08, 16.02, 2, 0)
	MovementLoopAddLocation(NPC, 67.13, -13.13, 16.13, 2, 0)
	MovementLoopAddLocation(NPC, 87.71, -12.5, 19.1, 2, 0)
	MovementLoopAddLocation(NPC, 94.71, -11.54, 19.91, 2, 0)
	MovementLoopAddLocation(NPC, 103.17, -11.75, 21.82, 2, 0)
end

