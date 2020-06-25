--[[
    Script Name    : SpawnScripts/QueensColony/ashoalglider425732.lua
	Script Purpose	:	Waypoint Path for glider_020_10.lua
	Script Author	:	Rylec
	Script Date		:	12-31-2019 10:14:33 
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
	MovementLoopAddLocation(NPC, -23.07, -11.51, -2.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.67, -11.94, -16.21, 2, 0)
	MovementLoopAddLocation(NPC, 5.14, -11.35, -41.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.59, -11.47, -19.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.13, -11.02, -47.25, 2, 0)
	MovementLoopAddLocation(NPC, -10.54, -10.7, -64.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.2, -10.7, -48.05, 2, 0)
	MovementLoopAddLocation(NPC, -25.02, -10.7, -20.51, 2, 0)
	MovementLoopAddLocation(NPC, -32.73, -10.7, -0.66, 2, 0)
	MovementLoopAddLocation(NPC, -37.24, -11.22, 22.1, 2, 0)
	MovementLoopAddLocation(NPC, -40.1, -11.14, 32.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.98, -11.25, 21.92, 2, 0)
	MovementLoopAddLocation(NPC, -37.86, -10.7, 7.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.13, -10.7, 2.49, 2, 0)
	MovementLoopAddLocation(NPC, -40.53, -10.7, -20.56, 2, 0)
	MovementLoopAddLocation(NPC, -42.18, -11.23, -31.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.57, -12.41, -8.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.07, -12.04, -16.14, 2, 0)
	MovementLoopAddLocation(NPC, -22.23, -11.99, -32.45, 2, 0)
	MovementLoopAddLocation(NPC, -25.97, -12.21, -36.98, 2, 0)
	MovementLoopAddLocation(NPC, -30.4, -12.41, -41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.74, -12.35, -34.04, 2, 0)
	MovementLoopAddLocation(NPC, -26.43, -11.5, -21.91, 2, 0)
end

