--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426325.lua
	Script Purpose	:	Waypoint Path for atriggerfish426325.lua
	Script Author	:	Rylec
	Script Date	:	12-23-2019 10:11:30 
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
	MovementLoopAddLocation(NPC, -43.03, -11.3, 49.11, 2, 0)
	MovementLoopAddLocation(NPC, -41.94, -11.3, 51.71, 2, 0)
	MovementLoopAddLocation(NPC, -40.94, -11.3, 53.41, 2, 0)
	MovementLoopAddLocation(NPC, -40.47, -11.3, 55.12, 2, 0)
	MovementLoopAddLocation(NPC, -39.09, -11.3, 57.17, 2, 0)
	MovementLoopAddLocation(NPC, -38.29, -11.3, 58.92, 2, 0)
	MovementLoopAddLocation(NPC, -34.63, -11.3, 60.41, 2, 4)
	MovementLoopAddLocation(NPC, -33.03, -11.59, 52.53, 2, 0)
	MovementLoopAddLocation(NPC, -32.99, -11.63, 51.12, 2, 0)
	MovementLoopAddLocation(NPC, -32.46, -11.8, 50.02, 2, 0)
	MovementLoopAddLocation(NPC, -31.45, -12.59, 48.71, 2, 0)
	MovementLoopAddLocation(NPC, -25.68, -12.52, 47.67, 2, 0)
	MovementLoopAddLocation(NPC, -21.94, -12.46, 48.78, 2, 0)
	MovementLoopAddLocation(NPC, -20.84, -11.74, 49.22, 4, 0)
	MovementLoopAddLocation(NPC, -19.25, -11.83, 50.93, 4, 0)
	MovementLoopAddLocation(NPC, -16.09, -11.67, 52.14, 2, 0)
	MovementLoopAddLocation(NPC, -15.9, -11.65, 53.29, 2, 0)
	MovementLoopAddLocation(NPC, -16.12, -11.58, 55.19, 2, 0)
	MovementLoopAddLocation(NPC, -16.68, -11.59, 58.94, 2, 0)
	MovementLoopAddLocation(NPC, -17.7, -10.95, 60.55, 2, 0)
	MovementLoopAddLocation(NPC, -18.4, -10.96, 63.98, 2, 5)
	MovementLoopAddLocation(NPC, -18.58, -10.45, 62.25, 2, 0)
	MovementLoopAddLocation(NPC, -20.7, -10.1, 66.36, 2, 0)
	MovementLoopAddLocation(NPC, -24.82, -11.3, 69.74, 2, 0)
	MovementLoopAddLocation(NPC, -26.16, -11.25, 70.71, 2, 0)
	MovementLoopAddLocation(NPC, -28.04, -11.3, 73.9, 2, 0)
	MovementLoopAddLocation(NPC, -31.01, -11.3, 77.18, 2, 5)
	MovementLoopAddLocation(NPC, -33.41, -10.43, 73.45, 4, 0)
	MovementLoopAddLocation(NPC, -34.45, -11.3, 67.73, 4, 1)
	MovementLoopAddLocation(NPC, -37.88, -11.22, 58.1, 2, 0)
end

