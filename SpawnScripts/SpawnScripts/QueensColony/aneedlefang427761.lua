--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427761.lua
	Script Purpose	:	Waypoint Path for aneedlefang427761.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:49 
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
	MovementLoopAddLocation(NPC, -49.72, -10.26, -3.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.02, -10.43, 4.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.46, -10.3, -6.31, 2, 0)
	MovementLoopAddLocation(NPC, -41.7, -10.3, -19.63, 2, 0)
	MovementLoopAddLocation(NPC, -35.05, -12, -28.01, 2, 0)
	MovementLoopAddLocation(NPC, -28.73, -12.73, -33.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.14, -12.17, -40.09, 2, 0)
	MovementLoopAddLocation(NPC, -45.03, -11.09, -47.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.83, -10.3, -42.16, 2, 0)
	MovementLoopAddLocation(NPC, -54.09, -10, -32.56, 2, 0)
	MovementLoopAddLocation(NPC, -59.6, -10, -30.33, 2, 0)
	MovementLoopAddLocation(NPC, -75.75, -10.2, -17.5, 2, 0)
	MovementLoopAddLocation(NPC, -82.62, -10.65, -15.15, 2, 0)
	MovementLoopAddLocation(NPC, -89.7, -10.68, -16.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.9, -10.31, -8.8, 2, 0)
	MovementLoopAddLocation(NPC, -58.46, -10.3, -5.5, 2, 0)
	MovementLoopAddLocation(NPC, -43.14, -10.3, 1.05, 2, 0)
	MovementLoopAddLocation(NPC, -32.23, -10.54, 5.01, 2, 0)
	MovementLoopAddLocation(NPC, -23.84, -12.41, 8.08, 2, 0)
	MovementLoopAddLocation(NPC, -18.95, -12.98, 11.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.8, -10.3, 5.29, 2, 0)
	MovementLoopAddLocation(NPC, -49.43, -10.36, 3.35, 2, 0)
	MovementLoopAddLocation(NPC, -58.02, -10.51, 2.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.8, -10.49, -28.48, 2, 0)
	MovementLoopAddLocation(NPC, -24.72, -12.69, -39.98, 2, 0)
	MovementLoopAddLocation(NPC, -17.96, -12.56, -44.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.63, -12.76, -34.16, 2, 0)
	MovementLoopAddLocation(NPC, -28.33, -12.81, -26.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.1, -11.88, -18.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.17, -12.02, 0.55, 2, 0)
	MovementLoopAddLocation(NPC, -19.82, -13.46, 13.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.15, -10.34, 6.74, 2, 0)
end

