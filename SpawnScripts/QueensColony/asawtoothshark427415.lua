--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427415.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427415.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:19 
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
	MovementLoopAddLocation(NPC, 46.47, -12.62, -45.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.98, -12.26, -43.6, 2, 0)
	MovementLoopAddLocation(NPC, 48.98, -11.82, -38.91, 2, 0)
	MovementLoopAddLocation(NPC, 48.04, -11.99, -31.77, 2, 0)
	MovementLoopAddLocation(NPC, 48.02, -12.31, -26.11, 2, 0)
	MovementLoopAddLocation(NPC, 51.87, -13.72, -13.63, 2, 0)
	MovementLoopAddLocation(NPC, 53.85, -13.97, -9.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.51, -14.91, -7.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.28, -13.54, -6.59, 2, 0)
	MovementLoopAddLocation(NPC, 55.75, -13.8, -6.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.56, -13.43, -10.27, 2, 0)
	MovementLoopAddLocation(NPC, 40.93, -13.59, -16.79, 2, 0)
	MovementLoopAddLocation(NPC, 22.71, -14.36, -30.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.11, -12.46, -11.31, 2, 0)
	MovementLoopAddLocation(NPC, 48.54, -13.51, -3.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.96, -11.5, -15.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.65, -11.98, -20.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.65, -12.85, -13.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.58, -12.98, -16.86, 2, 0)
	MovementLoopAddLocation(NPC, 26.3, -14.17, -21.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.67, -11.61, -33.06, 2, 0)
	MovementLoopAddLocation(NPC, 43.59, -11.57, -40.33, 2, 0)
	MovementLoopAddLocation(NPC, 47.37, -12.48, -48.91, 2, math.random(10, 20))
end

