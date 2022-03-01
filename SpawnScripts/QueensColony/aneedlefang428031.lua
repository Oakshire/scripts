--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang428031.lua
	Script Purpose	:	Waypoint Path for aneedlefang428031.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:11 
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
	MovementLoopAddLocation(NPC, -42.78, -11.17, -57.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.22, -11.01, -50.16, 2, 0)
	MovementLoopAddLocation(NPC, -32.78, -10.83, -47.02, 2, 0)
	MovementLoopAddLocation(NPC, -22.02, -11.42, -36.48, 2, 0)
	MovementLoopAddLocation(NPC, -12.09, -11.95, -24.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.85, -11.86, -31.2, 2, 0)
	MovementLoopAddLocation(NPC, -24.24, -11.79, -38.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.34, -11.13, -27.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.81, -11.18, -21.66, 2, 0)
	MovementLoopAddLocation(NPC, -18.02, -11.94, -15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.81, -11.69, -16.23, 2, 0)
	MovementLoopAddLocation(NPC, -7.89, -11.67, -15.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.29, -11.76, -30.96, 2, 0)
	MovementLoopAddLocation(NPC, -27.73, -13.1, -44.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.64, -11.57, -37.8, 2, 0)
	MovementLoopAddLocation(NPC, -50.44, -10.2, -28.58, 2, 0)
	MovementLoopAddLocation(NPC, -70.91, -10.2, -13.92, 2, 0)
	MovementLoopAddLocation(NPC, -89.96, -11.15, -1.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.15, -11.58, 12.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -86.56, -11.04, -0.29, 2, 0)
	MovementLoopAddLocation(NPC, -78.09, -11.1, -16.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.97, -10.3, -14.11, 2, 0)
	MovementLoopAddLocation(NPC, -53.23, -10.33, -12.56, 2, 0)
	MovementLoopAddLocation(NPC, -43.1, -10.35, -11.3, 2, 0)
	MovementLoopAddLocation(NPC, -34.35, -11.1, -12.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.22, -10.3, -8.73, 2, 0)
	MovementLoopAddLocation(NPC, -74.32, -10.29, 3.91, 2, 0)
	MovementLoopAddLocation(NPC, -81.97, -11.34, 7.13, 2, 0)
	MovementLoopAddLocation(NPC, -89.06, -12, 6.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.51, -10.33, 3.73, 2, 0)
	MovementLoopAddLocation(NPC, -54.68, -10.33, 4.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.51, -10.26, -4.36, 2, 0)
	MovementLoopAddLocation(NPC, -47.86, -10.33, -38.78, 2, 0)
	MovementLoopAddLocation(NPC, -44.24, -10.42, -52.21, 2, 0)
end

