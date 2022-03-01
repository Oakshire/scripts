--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427568.lua
	Script Purpose	:	Waypoint Path for aneedlefang427568.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:10 
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
	MovementLoopAddLocation(NPC, -37.3, -12.06, 31.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.97, -12.6, 21.88, 2, 0)
	MovementLoopAddLocation(NPC, -16.16, -12.89, 18.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.68, -12.74, 15.79, 2, 0)
	MovementLoopAddLocation(NPC, -27.3, -12.11, 6.24, 2, 0)
	MovementLoopAddLocation(NPC, -28.8, -11.87, 2.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.73, -12.34, 2.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.95, -11.39, -8.8, 2, 0)
	MovementLoopAddLocation(NPC, -22.33, -12.34, -24.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.96, -12.03, -35.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.13, -12.68, -32.31, 2, 0)
	MovementLoopAddLocation(NPC, -32.3, -12.81, -31.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.9, -13.09, -31.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.14, -12.01, -26.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.94, -10.08, -41.6, 2, 0)
	MovementLoopAddLocation(NPC, -27.83, -11.07, -53.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.48, -10.51, -37.11, 2, 0)
	MovementLoopAddLocation(NPC, -47.49, -10.31, -20.03, 2, 0)
	MovementLoopAddLocation(NPC, -50.22, -11.1, -15.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.65, -10.19, -5.26, 2, 0)
	MovementLoopAddLocation(NPC, -44.77, -10.26, 10.03, 2, 0)
	MovementLoopAddLocation(NPC, -42.73, -13.05, 33.26, 2, math.random(10, 20))
end

