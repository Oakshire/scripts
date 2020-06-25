--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425513.lua
	Script Purpose	:	Waypoint Path for ashoalglider425513.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:51 
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
	MovementLoopAddLocation(NPC, 34.62, -12.52, -6.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.45, -12.81, -12.83, 2, 0)
	MovementLoopAddLocation(NPC, 38.33, -12.62, -17.98, 2, 0)
	MovementLoopAddLocation(NPC, 38.52, -12.13, -24.46, 2, 0)
	MovementLoopAddLocation(NPC, 42.21, -11.54, -38.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.84, -11.65, -36.19, 2, 0)
	MovementLoopAddLocation(NPC, 46.71, -11.69, -33.63, 2, 0)
	MovementLoopAddLocation(NPC, 50.94, -11.76, -25.64, 2, 0)
	MovementLoopAddLocation(NPC, 57.39, -12.09, -19.82, 2, 0)
	MovementLoopAddLocation(NPC, 62.96, -13.06, -15.47, 2, 0)
	MovementLoopAddLocation(NPC, 65.51, -12.11, -12.42, 2, 0)
	MovementLoopAddLocation(NPC, 67.83, -11.95, -8.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.41, -11.31, -16.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.68, -11.8, -16.43, 2, 0)
	MovementLoopAddLocation(NPC, 65.18, -12.46, -16.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.73, -12.65, -16.67, 2, 0)
	MovementLoopAddLocation(NPC, 41.81, -12.76, -15.85, 2, 0)
	MovementLoopAddLocation(NPC, 29.8, -13.37, -10.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.64, -13.11, -22.92, 2, 0)
	MovementLoopAddLocation(NPC, 36.56, -11.98, -31.4, 2, 0)
	MovementLoopAddLocation(NPC, 50.16, -11.19, -42.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.09, -11.62, -33.29, 2, 0)
end

