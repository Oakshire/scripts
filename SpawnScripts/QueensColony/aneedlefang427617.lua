--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427617.lua
	Script Purpose	:	Waypoint Path for aneedlefang427617.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:16 
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
	MovementLoopAddLocation(NPC, 24.93, -12.97, 10.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.37, -12.6, 1.47, 2, 0)
	MovementLoopAddLocation(NPC, 43.49, -12.74, -1.73, 2, 0)
	MovementLoopAddLocation(NPC, 51.97, -12.95, -4.45, 2, 0)
	MovementLoopAddLocation(NPC, 57.13, -13.19, -9.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.01, -13.07, -12.33, 2, 0)
	MovementLoopAddLocation(NPC, 36.42, -14.82, -16.03, 2, 0)
	MovementLoopAddLocation(NPC, 33.57, -15.35, -17.78, 2, 0)
	MovementLoopAddLocation(NPC, 31.48, -15.53, -20.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.76, -12.92, -27.21, 2, 0)
	MovementLoopAddLocation(NPC, 43.84, -11.99, -34.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.9, -12.19, -26.34, 2, 0)
	MovementLoopAddLocation(NPC, 36.97, -12.56, -13.25, 2, 0)
	MovementLoopAddLocation(NPC, 35.67, -12.91, 5.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.32, -11.74, -2.54, 2, 0)
	MovementLoopAddLocation(NPC, 25.99, -12.12, -11.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.52, -12.1, -15.47, 2, 0)
	MovementLoopAddLocation(NPC, 31.88, -12.09, -32.87, 2, 0)
	MovementLoopAddLocation(NPC, 33.69, -11.74, -40.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.65, -11.09, -42.47, 2, 0)
	MovementLoopAddLocation(NPC, 43.06, -11.15, -44.17, 2, 0)
	MovementLoopAddLocation(NPC, 46.7, -12.89, -48.03, 2, 0)
	MovementLoopAddLocation(NPC, 47.92, -12.73, -50.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.49, -11.9, -47.15, 2, 0)
	MovementLoopAddLocation(NPC, 38.95, -11.08, -46.34, 2, 0)
	MovementLoopAddLocation(NPC, 30.97, -11.34, -42.25, 2, 0)
	MovementLoopAddLocation(NPC, 0.1, -11.99, -30.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.55, -11.98, -35.51, 2, 0)
	MovementLoopAddLocation(NPC, 2.45, -12.18, -39.46, 2, 0)
	MovementLoopAddLocation(NPC, 7.17, -13, -43.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.14, -11.98, -37.55, 2, 0)
	MovementLoopAddLocation(NPC, 16.39, -12.24, -22.98, 2, 0)
	MovementLoopAddLocation(NPC, 19.91, -13.1, -18.22, 2, 0)
	MovementLoopAddLocation(NPC, 22.72, -13.27, -15.17, 2, math.random(10, 20))
end

