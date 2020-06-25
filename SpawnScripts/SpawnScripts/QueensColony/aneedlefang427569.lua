--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427569.lua
	Script Purpose	:	Waypoint Path for aneedlefang427569.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:25 
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
	MovementLoopAddLocation(NPC, -27.71, -12.14, 0.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.26, -12.01, 8.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.5, -12.2, -4.37, 2, 0)
	MovementLoopAddLocation(NPC, -3.89, -12.06, -30.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.08, -12.22, -16.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.28, -11.64, -29, 2, 0)
	MovementLoopAddLocation(NPC, -34.19, -11.62, -40.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.44, -11.73, -32.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.63, -12.61, -38.42, 2, 0)
	MovementLoopAddLocation(NPC, -18.09, -12.37, -41.66, 2, 0)
	MovementLoopAddLocation(NPC, -8.48, -12.24, -43.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.55, -12.66, -47.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.86, -10.59, -36.56, 2, 0)
	MovementLoopAddLocation(NPC, -19.57, -11.04, -9.18, 2, 0)
	MovementLoopAddLocation(NPC, -28.13, -11.42, 8.54, 2, 0)
	MovementLoopAddLocation(NPC, -32.79, -11.62, 18.73, 2, 0)
	MovementLoopAddLocation(NPC, -37.99, -11.59, 25.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.2, -11.67, 33.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.29, -12.17, 18.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.86, -11.65, 10.23, 2, 0)
end


