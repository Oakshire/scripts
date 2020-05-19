--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427590.lua
	Script Purpose	:	Waypoint Path for aneedlefang427590.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:23 
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
	MovementLoopAddLocation(NPC, 58.8, -12.13, -62.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.28, -12.02, -80.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.8, -12.02, -74.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.79, -11.85, -69.09, 2, 0)
	MovementLoopAddLocation(NPC, 81.33, -11.76, -38.02, 2, 0)
	MovementLoopAddLocation(NPC, 91.33, -12.13, -24.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.24, -12.68, -19.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.57, -12.63, -29.06, 2, 0)
	MovementLoopAddLocation(NPC, 99.67, -12.83, -35.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.05, -10.34, -44.3, 2, 0)
	MovementLoopAddLocation(NPC, 80.11, -10.3, -48.6, 2, 0)
	MovementLoopAddLocation(NPC, 77.48, -10.3, -51.33, 2, 0)
	MovementLoopAddLocation(NPC, 75.97, -10.3, -54.94, 2, 0)
	MovementLoopAddLocation(NPC, 76.13, -11.32, -67.04, 2, 0)
	MovementLoopAddLocation(NPC, 76.75, -11.82, -72.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.36, -10.3, -54.76, 2, 0)
	MovementLoopAddLocation(NPC, 76.87, -10.3, -51.54, 2, 0)
	MovementLoopAddLocation(NPC, 80.02, -10.3, -48.37, 2, 0)
	MovementLoopAddLocation(NPC, 83.67, -10.3, -46.49, 2, 0)
	MovementLoopAddLocation(NPC, 99.49, -12.11, -35.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.61, -12.82, -28.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.51, -12.97, -31.07, 2, 0)
	MovementLoopAddLocation(NPC, 90.63, -13.04, -34.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.64, -11.18, -40.99, 2, 0)
	MovementLoopAddLocation(NPC, 64.53, -11.09, -52.89, 2, math.random(10, 20))
end

