--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427598.lua
	Script Purpose	:	Waypoint Path for aneedlefang427598.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:29:12 
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
	MovementLoopAddLocation(NPC, 3.88, -13.09, -67.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.35, -12.03, -56.71, 2, 0)
	MovementLoopAddLocation(NPC, 10.04, -12.03, -39.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.49, -11.58, -47.64, 2, 0)
	MovementLoopAddLocation(NPC, 1.13, -11.29, -53.14, 2, 0)
	MovementLoopAddLocation(NPC, -5.95, -11.86, -60.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.19, -11.2, -49.76, 2, 0)
	MovementLoopAddLocation(NPC, 17.59, -12.02, -4.04, 2, 0)
	MovementLoopAddLocation(NPC, 19.12, -12.3, -0.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.89, -12.96, 7.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.25, -12.77, 0.46, 2, 0)
	MovementLoopAddLocation(NPC, 43.64, -12.99, -14.7, 2, 0)
	MovementLoopAddLocation(NPC, 46.93, -12.98, -17.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.25, -12.99, -26.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.62, -12.16, -27.8, 2, 0)
	MovementLoopAddLocation(NPC, 6.62, -12, -28.96, 2, 4)
	MovementLoopAddLocation(NPC, 6.87, -12.03, -34.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.44, -12.06, -26.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.47, -12, -25.78, 2, 0)
	MovementLoopAddLocation(NPC, 51.32, -12.05, -21.59, 2, 0)
	MovementLoopAddLocation(NPC, 56.22, -12.07, -20.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.64, -11.64, -24.63, 2, 0)
	MovementLoopAddLocation(NPC, 33.95, -12.31, -31.27, 2, 0)
	MovementLoopAddLocation(NPC, 25.21, -12.08, -37.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.01, -11.24, -42.15, 2, 0)
	MovementLoopAddLocation(NPC, 16.04, -11.5, -48.1, 2, 0)
	MovementLoopAddLocation(NPC, 10.68, -12.04, -55.12, 2, 0)
	MovementLoopAddLocation(NPC, 6.25, -12.73, -64.27, 2, 0)
end

