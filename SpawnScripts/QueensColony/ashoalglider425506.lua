--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425506.lua
	Script Purpose	:	Waypoint Path for ashoalglider425506.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:06 
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
	MovementLoopAddLocation(NPC, 50.11, -11.53, -44.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.49, -12.04, -31.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.96, -12.02, -20.74, 2, 0)
	MovementLoopAddLocation(NPC, 47.22, -12.05, -14.44, 2, 0)
	MovementLoopAddLocation(NPC, 49.96, -11.46, 1.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.73, -11.88, -7.92, 2, 0)
	MovementLoopAddLocation(NPC, 20.55, -12.42, -19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.67, -13.52, -10.94, 2, 0)
	MovementLoopAddLocation(NPC, 40.53, -13.43, -8.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.53, -12.89, -10.56, 2, 0)
	MovementLoopAddLocation(NPC, 58.79, -12.63, -13.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.31, -12.88, -11.24, 2, 0)
	MovementLoopAddLocation(NPC, 28.88, -13.21, 0.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.59, -12.45, -11.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.1, -12.23, -26.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.29, -14.13, -20.14, 2, 0)
	MovementLoopAddLocation(NPC, 33.59, -14.71, -17.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.75, -11.79, -28.06, 2, 0)
	MovementLoopAddLocation(NPC, 44.05, -11.25, -36.91, 2, 0)
end


