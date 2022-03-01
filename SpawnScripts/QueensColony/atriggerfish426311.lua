--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426311.lua
	Script Purpose	:	Waypoint Path for atriggerfish426311.lua
	Script Author	:	Rylec
	Script Date	:	12-23-2019 10:11:27 
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
	MovementLoopAddLocation(NPC, -42.54, -11.3, 52.56, 2, 0)
	MovementLoopAddLocation(NPC, -41.52, -11.3, 54.02, 2, 0)
	MovementLoopAddLocation(NPC, -40.67, -11.3, 57.59, 2, 0)
	MovementLoopAddLocation(NPC, -38.65, -11.3, 60.49, 2, 0)
	MovementLoopAddLocation(NPC, -37.48, -11.3, 64.2, 2, 0)
	MovementLoopAddLocation(NPC, -36.48, -11.3, 62.89, 2, 4)
	MovementLoopAddLocation(NPC, -35.41, -11.3, 56.91, 2, 0)
	MovementLoopAddLocation(NPC, -31.45, -11.3, 54.5, 2, 0)
	MovementLoopAddLocation(NPC, -28.67, -12.32, 53.06, 2, 0)
	MovementLoopAddLocation(NPC, -26.01, -12.6, 52.71, 2, 0)
	MovementLoopAddLocation(NPC, -24.32, -12.9, 52.9, 2, 0)
	MovementLoopAddLocation(NPC, -25.94, -11.41, 53.02, 4, 0)
	MovementLoopAddLocation(NPC, -21.18, -11.52, 52.58, 4, 0)
	MovementLoopAddLocation(NPC, -19.12, -11.7, 52.16, 2, 0)
	MovementLoopAddLocation(NPC, -16.92, -11.88, 52.46, 2, 0)
	MovementLoopAddLocation(NPC, -16.29, -12.3, 51.46, 4, 0)
	MovementLoopAddLocation(NPC, -15.2, -12.1, 56.71, 4, 0)
	MovementLoopAddLocation(NPC, -13.82, -11.48, 58.44, 2, 0)
	MovementLoopAddLocation(NPC, -16.11, -11.91, 59.8, 2, 0)
	MovementLoopAddLocation(NPC, -17.78, -11.42, 61.98, 2, 4)
	MovementLoopAddLocation(NPC, -18.35, -11.03, 61.29, 4, 0)
	MovementLoopAddLocation(NPC, -18.52, -10.56, 62.71, 4, 0)
	MovementLoopAddLocation(NPC, -21.39, -10.28, 64.72, 2, 0)
	MovementLoopAddLocation(NPC, -24.7, -10.12, 69.67, 2, 0)
	MovementLoopAddLocation(NPC, -26.61, -11.3, 71.83, 2, 0)
	MovementLoopAddLocation(NPC, -26.49, -11.3, 70.31, 4, 0)
	MovementLoopAddLocation(NPC, -27.56, -11.3, 71.23, 4, 0)
	MovementLoopAddLocation(NPC, -30.59, -11.3, 75.21, 2, 0)
	MovementLoopAddLocation(NPC, -31.87, -11.3, 75.67, 2, 0)
	MovementLoopAddLocation(NPC, -32.64, -11.3, 75.32, 2, 4)
	MovementLoopAddLocation(NPC, -33.53, -10.51, 73.52, 2, 0)
	MovementLoopAddLocation(NPC, -34.34, -11.3, 68.17, 2.35, 0)
	MovementLoopAddLocation(NPC, -41.89, -11.3, 50.13, 2, 2)
	MovementLoopAddLocation(NPC, -41.03, -11.3, 51.31, 2, 0)
end

