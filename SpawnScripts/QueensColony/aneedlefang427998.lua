--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427998.lua
	Script Purpose	:	Waypoint Path for aneedlefang427998.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:35 
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
	MovementLoopAddLocation(NPC, -12.71, -12.02, -40.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.42, -12.17, -47.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.79, -11.05, -34.8, 2, 0)
	MovementLoopAddLocation(NPC, -23.64, -11.09, -18.26, 2, 0)
	MovementLoopAddLocation(NPC, -24.13, -11.33, 4.61, 2, 0)
	MovementLoopAddLocation(NPC, -24.1, -12.8, 28.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.45, -11.5, 6.88, 2, 0)
	MovementLoopAddLocation(NPC, -22.08, -11.35, -0.96, 2, 0)
	MovementLoopAddLocation(NPC, -17.39, -11.96, -14.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.17, -11.6, -30.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.74, -10.61, -55.16, 2, 0)
	MovementLoopAddLocation(NPC, -41.88, -11.63, -64.51, 2, 0)
	MovementLoopAddLocation(NPC, -38.85, -11.88, -71.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.78, -11.77, -65.97, 2, 0)
	MovementLoopAddLocation(NPC, -40.67, -11.25, -58.86, 2, 0)
	MovementLoopAddLocation(NPC, -37.78, -11.15, -51.35, 2, 0)
	MovementLoopAddLocation(NPC, -30.06, -12.82, -41.36, 2, 0)
	MovementLoopAddLocation(NPC, -27.66, -13.13, -37.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.7, -11.14, -47.45, 2, 0)
	MovementLoopAddLocation(NPC, -42.09, -11.1, -57.92, 2, 0)
	MovementLoopAddLocation(NPC, -42.24, -11.87, -66.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.22, -11.24, -62.24, 2, 0)
	MovementLoopAddLocation(NPC, -38.38, -10.99, -58.63, 2, 0)
	MovementLoopAddLocation(NPC, -25.15, -10.97, -50.15, 2, 0)
end

