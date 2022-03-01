--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427570.lua
	Script Purpose	:	Waypoint Path for aneedlefang427570.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:45 
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
	MovementLoopAddLocation(NPC, -32.69, -12.16, -24.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.93, -11.77, -23.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.47, -10.99, -28.07, 2, 0)
	MovementLoopAddLocation(NPC, -48.64, -10.3, -48.75, 2, 0)
	MovementLoopAddLocation(NPC, -55.75, -10.24, -54.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.67, -11.09, -55.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.18, -10.65, -51.84, 2, 0)
	MovementLoopAddLocation(NPC, -16.86, -11.16, -34.69, 2, 0)
	MovementLoopAddLocation(NPC, -8.49, -11.86, -27.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.24, -10.95, -32.61, 2, 0)
	MovementLoopAddLocation(NPC, -17.01, -11.28, -35.45, 2, 0)
	MovementLoopAddLocation(NPC, -24.78, -12.95, -47.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.85, -11.13, -49.78, 2, 0)
	MovementLoopAddLocation(NPC, -10.77, -11.24, -52.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.61, -10.42, -38.75, 2, 0)
	MovementLoopAddLocation(NPC, -30.62, -10.35, -21.27, 2, 0)
	MovementLoopAddLocation(NPC, -34.19, -11.06, -12.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.68, -10.3, -7.79, 2, 0)
	MovementLoopAddLocation(NPC, -50.04, -10.52, -2.86, 2, 0)
	MovementLoopAddLocation(NPC, -56.11, -11.1, 1.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.69, -10.3, -3.27, 2, 0)
	MovementLoopAddLocation(NPC, -36.82, -10.36, -22.33, 2, 0)
	MovementLoopAddLocation(NPC, -28.11, -11.7, -34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.47, -12.11, -37.01, 2, math.random(10, 20))
end

