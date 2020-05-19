--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427615.lua
	Script Purpose	:	Waypoint Path for aneedlefang427615.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:20 
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
	MovementLoopAddLocation(NPC, 40.45, -13.93, -1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.99, -12.96, -6.89, 2, 0)
	MovementLoopAddLocation(NPC, 45.5, -12.61, -10.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.92, -13.2, -12.52, 2, 0)
	MovementLoopAddLocation(NPC, 40.5, -14.01, -16.37, 2, 0)
	MovementLoopAddLocation(NPC, 37.11, -15.3, -20.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.74, -14.22, -15.74, 2, 0)
	MovementLoopAddLocation(NPC, 33.32, -12.18, -2.96, 2, 0)
	MovementLoopAddLocation(NPC, 32.44, -12.12, 4.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.5, -12.04, -4.47, 2, 0)
	MovementLoopAddLocation(NPC, 57.98, -13.65, -13.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.51, -15.72, -10.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.95, -13.2, -13.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.34, -13.05, -16.76, 2, 0)
	MovementLoopAddLocation(NPC, 49.04, -12.98, -18.59, 2, 0)
	MovementLoopAddLocation(NPC, 37.59, -14.06, -27.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.29, -13.1, -20.72, 2, 0)
	MovementLoopAddLocation(NPC, 52.92, -12.9, -16.91, 2, 0)
	MovementLoopAddLocation(NPC, 70.56, -12.5, -10.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.65, -12.94, -17.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.15, -12.66, -2.81, 2, 0)
	MovementLoopAddLocation(NPC, 29.23, -12.01, 4.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.39, -13.44, 0.28, 2, 0)
end


