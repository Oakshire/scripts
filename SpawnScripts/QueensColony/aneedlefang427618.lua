--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427618.lua
	Script Purpose	:	Waypoint Path for aneedlefang427618.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:43 
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
	MovementLoopAddLocation(NPC, 3.81, -12.04, -42.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.68, -11.82, -49.54, 2, 0)
	MovementLoopAddLocation(NPC, 11.28, -12.05, -54.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.66, -11.67, -50.03, 2, 0)
	MovementLoopAddLocation(NPC, 15.94, -11.17, -41.59, 2, 0)
	MovementLoopAddLocation(NPC, 15.72, -11.92, -32.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.98, -12.15, -27.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.79, -10.62, -17.84, 2, 0)
	MovementLoopAddLocation(NPC, 59.46, -11.53, -13.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.24, -10.3, -23.33, 2, 0)
	MovementLoopAddLocation(NPC, 52.68, -10.3, -27.88, 2, 0)
	MovementLoopAddLocation(NPC, 51.31, -10.3, -31.99, 2, 0)
	MovementLoopAddLocation(NPC, 48.26, -11.58, -42.09, 2, 0)
	MovementLoopAddLocation(NPC, 45.55, -11.89, -47.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.78, -11.66, -42.95, 2, 0)
	MovementLoopAddLocation(NPC, 38.75, -11.72, -34.21, 2, 0)
	MovementLoopAddLocation(NPC, 30.64, -12.98, -28.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.85, -12.64, -30.77, 2, 0)
	MovementLoopAddLocation(NPC, 17.36, -12.12, -36.71, 2, 0)
	MovementLoopAddLocation(NPC, 6.36, -11.92, -47.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.3, -12.03, -55.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.38, -11.51, -52.33, 2, 0)
	MovementLoopAddLocation(NPC, 16.4, -11.07, -41.35, 2, 0)
	MovementLoopAddLocation(NPC, 16.75, -12.35, -30.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.3, -12.08, -26.3, 2, math.random(10, 20))
end

