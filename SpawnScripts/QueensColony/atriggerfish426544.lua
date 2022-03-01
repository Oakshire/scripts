--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426544.lua
	Script Purpose	:	Waypoint Path for atriggerfish426544.lua
	Script Author	:	Rylec
	Script Date	:	12-23-2019 10:11:48 
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
	MovementLoopAddLocation(NPC, -24.53, -14.95, 39.09, 2, 0)
	MovementLoopAddLocation(NPC, -26.5, -15.43, 40.26, 2, 0)
	MovementLoopAddLocation(NPC, -30.39, -15.36, 41.82, 2, 0)
	MovementLoopAddLocation(NPC, -29.21, -13.61, 42.81, 4, 0)
	MovementLoopAddLocation(NPC, -31.5, -14.2, 43.21, 4, 0)
	MovementLoopAddLocation(NPC, -31.73, -13.07, 44.38, 2, 0)
	MovementLoopAddLocation(NPC, -33.43, -13.29, 44.29, 2, 0)
	MovementLoopAddLocation(NPC, -32.42, -12.27, 43.84, 2, 0)
	MovementLoopAddLocation(NPC, -36.04, -12.66, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, -37.82, -13.41, 41.06, 2, 0)
	MovementLoopAddLocation(NPC, -37.24, -13.63, 38.95, 2, 0)
	MovementLoopAddLocation(NPC, -38.73, -13.22, 38.59, 2, 0)
	MovementLoopAddLocation(NPC, -41.32, -13.38, 39.59, 2, 0)
	MovementLoopAddLocation(NPC, -38.92, -11.87, 38.61, 4, 0)
	MovementLoopAddLocation(NPC, -40.07, -12.7, 35.24, 4, 0)
	MovementLoopAddLocation(NPC, -43.24, -14.1, 31.76, 2, 0)
	MovementLoopAddLocation(NPC, -41.54, -12.51, 32.46, 2, 0)
	MovementLoopAddLocation(NPC, -43.06, -12.27, 23.43, 2, 0)
	MovementLoopAddLocation(NPC, -46.48, -12.97, 21.57, 2, 0)
	MovementLoopAddLocation(NPC, -45.23, -12.01, 21.71, 2, 0)
	MovementLoopAddLocation(NPC, -45.99, -12.78, 19.59, 2, 0)
	MovementLoopAddLocation(NPC, -39.43, -13.73, 21.13, 2, 0)
	MovementLoopAddLocation(NPC, -38.46, -14.51, 21.77, 2, 0)
	MovementLoopAddLocation(NPC, -41.57, -14.33, 23.97, 2, 0)
	MovementLoopAddLocation(NPC, -41.49, -14.51, 25.67, 2, 0)
	MovementLoopAddLocation(NPC, -41.04, -14.76, 26.81, 2, 0)
	MovementLoopAddLocation(NPC, -41.8, -14.56, 28.19, 2, 0)
	MovementLoopAddLocation(NPC, -40.93, -13.83, 28.12, 4, 0)
	MovementLoopAddLocation(NPC, -40.82, -14.11, 29.31, 4, 0)
	MovementLoopAddLocation(NPC, -41.13, -14.52, 29.03, 2, 0)
	MovementLoopAddLocation(NPC, -41.27, -13.37, 30.6, 2, 0)
	MovementLoopAddLocation(NPC, -42.47, -13.54, 31.67, 2, 0)
	MovementLoopAddLocation(NPC, -41.23, -13.08, 31.99, 2, 0)
	MovementLoopAddLocation(NPC, -39.3, -13.35, 31.84, 2, 0)
	MovementLoopAddLocation(NPC, -39.24, -13.4, 32.94, 2, 0)
	MovementLoopAddLocation(NPC, -37.19, -13.76, 32.27, 2, 0)
	MovementLoopAddLocation(NPC, -37.75, -13.08, 33.24, 2, 0)
	MovementLoopAddLocation(NPC, -36.7, -15.17, 35.09, 2, 0)
	MovementLoopAddLocation(NPC, -37.68, -14.53, 36.97, 2, 0)
	MovementLoopAddLocation(NPC, -36.67, -13.04, 38.02, 2, 0)
	MovementLoopAddLocation(NPC, -36.81, -13.26, 40.47, 2, 0)
	MovementLoopAddLocation(NPC, -33.94, -13.9, 41.92, 2, 0)
	MovementLoopAddLocation(NPC, -32.86, -12.86, 41.48, 4, 0)
	MovementLoopAddLocation(NPC, -31.6, -14.87, 41.34, 4, 0)
	MovementLoopAddLocation(NPC, -28.95, -14.48, 38.48, 2, 0)
	MovementLoopAddLocation(NPC, -27.05, -14.89, 39.18, 2, 0)
	MovementLoopAddLocation(NPC, -24.27, -15.43, 39.02, 2, 0)
	MovementLoopAddLocation(NPC, -19.8, -15.49, 39.74, 2, 0)
	MovementLoopAddLocation(NPC, -20.03, -15.34, 34.8, 2, 5.2)
	MovementLoopAddLocation(NPC, -21.23, -13.77, 34.04, 4, 0)
	MovementLoopAddLocation(NPC, -23.41, -14.69, 35.02, 4, 0)
	MovementLoopAddLocation(NPC, -24.25, -15.18, 36.24, 2, 0)
	MovementLoopAddLocation(NPC, -25.44, -15.38, 36.62, 2, 0)
	MovementLoopAddLocation(NPC, -26.38, -15.8, 38.6, 2, 0)
end

