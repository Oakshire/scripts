--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427610.lua
	Script Purpose	:	Waypoint Path for aneedlefang427610.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:24 
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
	MovementLoopAddLocation(NPC, -27.71, -13.06, 17.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.21, -12.42, 8.56, 2, 0)
	MovementLoopAddLocation(NPC, -20.2, -11.79, 0.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.02, -11.47, 12.27, 2, 0)
	MovementLoopAddLocation(NPC, -30.2, -12.65, 19.52, 2, 0)
	MovementLoopAddLocation(NPC, -33.09, -13.07, 20.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.24, -11.95, 18.54, 2, 0)
	MovementLoopAddLocation(NPC, -25.39, -11.15, -1.32, 2, 0)
	MovementLoopAddLocation(NPC, -20.4, -12.03, -8.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.43, -12.12, 18.75, 2, 0)
	MovementLoopAddLocation(NPC, -32.71, -13.62, 27.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.61, -12, 23.24, 2, 0)
	MovementLoopAddLocation(NPC, -39.47, -11.18, 11.86, 2, 0)
	MovementLoopAddLocation(NPC, -42.91, -11.1, 7.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.01, -11.71, 17.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.36, -12.08, 9.75, 2, 0)
	MovementLoopAddLocation(NPC, -22.52, -12.02, 7.18, 2, 0)
	MovementLoopAddLocation(NPC, -21.86, -11.98, 4.01, 2, 0)
	MovementLoopAddLocation(NPC, -20.18, -11.66, 0.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.9, -11.56, 14.5, 2, 0)
	MovementLoopAddLocation(NPC, -29.28, -12.22, 17.64, 2, 0)
	MovementLoopAddLocation(NPC, -32.86, -12.97, 20.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.36, -12.02, 17.45, 2, 0)
	MovementLoopAddLocation(NPC, -25.82, -11.14, 0.6, 2, 0)
	MovementLoopAddLocation(NPC, -20.19, -12.05, -9.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24, -12.04, 1.64, 2, 0)
	MovementLoopAddLocation(NPC, -31.38, -12.24, 20.79, 2, 0)
	MovementLoopAddLocation(NPC, -32.86, -13.66, 30.79, 2, math.random(10, 20))
end

