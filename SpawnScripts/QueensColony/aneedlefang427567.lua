--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427567.lua
	Script Purpose	:	Waypoint Path for aneedlefang427567.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:38 
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
	MovementLoopAddLocation(NPC, -3.03, -12.12, -41.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.9, -12.23, -22.73, 2, 0)
	MovementLoopAddLocation(NPC, -3.45, -12.26, -17.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.49, -12.1, -22.52, 2, 0)
	MovementLoopAddLocation(NPC, -46.02, -11.12, -27.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.88, -11.27, -24.95, 2, 0)
	MovementLoopAddLocation(NPC, -31.83, -11.65, -22.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.31, -11.65, -28.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.44, -11.97, -32.44, 2, 0)
	MovementLoopAddLocation(NPC, -34.08, -12.13, -37.92, 2, 0)
	MovementLoopAddLocation(NPC, -35.33, -11.95, -44.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.25, -11.38, -41.16, 2, 0)
	MovementLoopAddLocation(NPC, -44.29, -11.15, -39.95, 2, 0)
	MovementLoopAddLocation(NPC, -55.63, -10.2, -31.78, 2, 0)
	MovementLoopAddLocation(NPC, -62.74, -10.1, -19.35, 2, 0)
	MovementLoopAddLocation(NPC, -77.56, -10.52, -4.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.83, -10.3, -12.41, 2, 0)
	MovementLoopAddLocation(NPC, -52.34, -10.3, -21.99, 2, 0)
	MovementLoopAddLocation(NPC, -42.61, -10.3, -29.7, 2, 0)
	MovementLoopAddLocation(NPC, -31.06, -10.27, -34.19, 2, 0)
	MovementLoopAddLocation(NPC, -21.27, -10.48, -41.21, 2, 0)
	MovementLoopAddLocation(NPC, -14.14, -10.43, -48.99, 2, 0)
	MovementLoopAddLocation(NPC, -9.25, -11.03, -52.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.38, -11.16, -55.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.51, -11.15, -50.31, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -12.06, -47.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.34, -10.3, -48.98, 2, 0)
	MovementLoopAddLocation(NPC, -52.02, -10.34, -50.1, 2, 0)
	MovementLoopAddLocation(NPC, -59.05, -11.54, -53.38, 2, 0)
	MovementLoopAddLocation(NPC, -63.68, -11.92, -54.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.66, -10.63, -52.28, 2, 0)
	MovementLoopAddLocation(NPC, -52.83, -10.3, -50.01, 2, 0)
	MovementLoopAddLocation(NPC, -47.31, -10.27, -48.77, 2, 0)
	MovementLoopAddLocation(NPC, -40.93, -10.63, -44.57, 2, 0)
	MovementLoopAddLocation(NPC, -35.12, -11.81, -41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.11, -11.98, -44.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.53, -11.94, -42.29, 2, 0)
	MovementLoopAddLocation(NPC, 1.04, -12.12, -39.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.95, -11.97, -45.61, 2, math.random(10, 20))
end

