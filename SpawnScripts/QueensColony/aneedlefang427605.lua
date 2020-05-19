--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427605.lua
	Script Purpose	:	Waypoint Path for aneedlefang427605.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:48 
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
	MovementLoopAddLocation(NPC, 28.62, -13.14, -1.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.8, -13.7, -5.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.1, -12.98, 0.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.85, -12.27, -5.39, 2, 0)
	MovementLoopAddLocation(NPC, 49.3, -12.21, -11.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.2, -12.12, -9.82, 2, 0)
	MovementLoopAddLocation(NPC, 25.74, -13.08, -13.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.78, -13.05, -9.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.18, -12.13, -14.33, 2, 0)
	MovementLoopAddLocation(NPC, 48.1, -12.58, -17.54, 2, 0)
	MovementLoopAddLocation(NPC, 42.61, -13.54, -24.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.67, -12.89, -22.16, 2, 0)
	MovementLoopAddLocation(NPC, 53.81, -12.49, -20.19, 2, 0)
	MovementLoopAddLocation(NPC, 70.38, -11.96, -16.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.24, -12.18, -11.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.75, -12.55, -2.77, 2, 0)
	MovementLoopAddLocation(NPC, 25.07, -13.21, -0.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.86, -12.78, 5.31, 2, math.random(10, 20))
end


