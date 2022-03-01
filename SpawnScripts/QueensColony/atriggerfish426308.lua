--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426308.lua
	Script Purpose	:	Waypoint Path for atriggerfish426308.lua
	Script Author	:	Rylec
	Script Date	:	12-23-2019 10:11:25 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
        SpawnSet(NPC, "difficulty", "2")  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -38.77, -11.3, 59.34, 2, 0)
	MovementLoopAddLocation(NPC, -38.37, -11.3, 61.91, 2, 0)
	MovementLoopAddLocation(NPC, -36.85, -11.3, 64.09, 2, 0)
	MovementLoopAddLocation(NPC, -35.5, -11.3, 67.8, 2, 0)
	MovementLoopAddLocation(NPC, -33.53, -11.3, 68.12, 2, 0)
	MovementLoopAddLocation(NPC, -32.58, -11.3, 67.25, 2, 0)
	MovementLoopAddLocation(NPC, -33.13, -11.3, 64.63, 2, 0)
	MovementLoopAddLocation(NPC, -33.94, -11.3, 63.49, 2, 0)
	MovementLoopAddLocation(NPC, -36.08, -11.3, 59.5, 2, 0)
	MovementLoopAddLocation(NPC, -35.82, -11.3, 57.27, 2, 0)
	MovementLoopAddLocation(NPC, -33.85, -11.55, 55.99, 2, 0)
	MovementLoopAddLocation(NPC, -26.78, -11.63, 54.07, 2, 0)
	MovementLoopAddLocation(NPC, -27.36, -12.2, 54.65, 3, 0)
	MovementLoopAddLocation(NPC, -24.46, -11.76, 53.97, 2, 0)
	MovementLoopAddLocation(NPC, -21.35, -12.22, 53.98, 2, 0)
	MovementLoopAddLocation(NPC, -19.78, -12, 53.96, 2, 0)
	MovementLoopAddLocation(NPC, -19.04, -11.58, 54.05, 2, 0)
	MovementLoopAddLocation(NPC, -16.51, -11.56, 54.24, 2, 0)
	MovementLoopAddLocation(NPC, -14.88, -12, 54.58, 2, 0)
	MovementLoopAddLocation(NPC, -13.02, -11.8, 57.14, 2, 0)
	MovementLoopAddLocation(NPC, -12.83, -11.66, 59.75, 2, 0)
	MovementLoopAddLocation(NPC, -12.6, -12.18, 62.14, 2, 0)
	MovementLoopAddLocation(NPC, -13.27, -11.05, 64.25, 2, 0)
	MovementLoopAddLocation(NPC, -15.83, -10.18, 66.12, 2, 0)
	MovementLoopAddLocation(NPC, -20.97, -10.47, 67.11, 2, 0)
	MovementLoopAddLocation(NPC, -22, -10.07, 68.29, 2, 0)
	MovementLoopAddLocation(NPC, -25.39, -11, 72.54, 2, 0)
	MovementLoopAddLocation(NPC, -26.67, -10.59, 74.28, 2, 0)
	MovementLoopAddLocation(NPC, -27.75, -11.2, 74.94, 2, 0)
	MovementLoopAddLocation(NPC, -31.82, -10.65, 77.11, 2, 0)
	MovementLoopAddLocation(NPC, -32.3, -10.54, 78.21, 2, 0)
	MovementLoopAddLocation(NPC, -35.23, -10.34, 80.6, 2, 0)
	MovementLoopAddLocation(NPC, -38.28, -9.98, 78.58, 2, 0)
	MovementLoopAddLocation(NPC, -39.69, -11.2, 74.67, 2, 0)
	MovementLoopAddLocation(NPC, -41.2, -11.2, 68.07, 2, 0)
	MovementLoopAddLocation(NPC, -43.48, -11.2, 63.23, 2, 0)
	MovementLoopAddLocation(NPC, -43.01, -10.63, 58.29, 2, 0)
	MovementLoopAddLocation(NPC, -45.81, -10.34, 56.62, 2, 0)
	MovementLoopAddLocation(NPC, -45.95, -10.81, 52.24, 2, 0)
	MovementLoopAddLocation(NPC, -43.71, -11.3, 49.34, 2, 0)
	MovementLoopAddLocation(NPC, -42.67, -11.3, 51.47, 2, 0)
end

