--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427613.lua
	Script Purpose	:	Waypoint Path for aneedlefang427613.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:42 
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
	MovementLoopAddLocation(NPC, 7.2, -11.89, -36.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.17, -11.78, -28.71, 2, 0)
	MovementLoopAddLocation(NPC, 14.03, -11.96, -12.4, 2, 0)
	MovementLoopAddLocation(NPC, 19.08, -12.94, -4.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.35, -14.2, -12.13, 2, 0)
	MovementLoopAddLocation(NPC, 32.65, -15.65, -21.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.04, -12.25, -29.72, 2, 0)
	MovementLoopAddLocation(NPC, 29.41, -12.23, -38.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.18, -11.93, -37.29, 2, 0)
	MovementLoopAddLocation(NPC, 10.4, -12.01, -38.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.01, -12.58, -28.42, 2, 0)
	MovementLoopAddLocation(NPC, 24.48, -13.19, -14.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.86, -12.24, -17.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.97, -12.06, -10.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.3, -12.06, -14.32, 2, 0)
	MovementLoopAddLocation(NPC, 49.48, -11.84, -21.1, 2, 0)
	MovementLoopAddLocation(NPC, 39.74, -11.18, -36.24, 2, 0)
	MovementLoopAddLocation(NPC, 35.84, -11.2, -41.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.45, -10.79, -46.88, 2, 0)
	MovementLoopAddLocation(NPC, 48.7, -11.49, -49.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.65, -10.3, -44.67, 2, 0)
	MovementLoopAddLocation(NPC, 35.22, -10.43, -37.96, 2, 0)
	MovementLoopAddLocation(NPC, 25.83, -13.5, -23.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.39, -13.78, -11.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.45, -11.76, -23.01, 2, 0)
end

