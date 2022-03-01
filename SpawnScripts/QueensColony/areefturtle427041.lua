--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427041.lua
	Script Purpose	:	Waypoint Path for areefturtle427041.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:47 
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
	MovementLoopAddLocation(NPC, -18.61, -11.46, -10.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.77, -10.96, -26.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.16, -11.44, -34.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37, -11.25, -21.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.96, -11.82, -24.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.34, -12.37, -7.44, 2, 0)
	MovementLoopAddLocation(NPC, -19.76, -12.37, -1.68, 2, 0)
	MovementLoopAddLocation(NPC, -25.22, -12.75, 7.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.1, -12.27, 4.94, 2, 0)
	MovementLoopAddLocation(NPC, -28.86, -10.63, -0.86, 2, 0)
	MovementLoopAddLocation(NPC, -31.22, -10.38, -6.03, 2, 0)
	MovementLoopAddLocation(NPC, -33.55, -10.57, -10.57, 2, 0)
	MovementLoopAddLocation(NPC, -40.16, -11.09, -21.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.84, -11.01, -16.27, 2, 0)
	MovementLoopAddLocation(NPC, -5, -11.06, -13.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.8, -11.32, -18.34, 2, 0)
	MovementLoopAddLocation(NPC, -9.53, -11.32, -29.06, 2, 0)
	MovementLoopAddLocation(NPC, -10.22, -11.37, -33.23, 2, 0)
	MovementLoopAddLocation(NPC, -10.5, -11.69, -37.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.18, -11.18, -42.52, 2, 0)
	MovementLoopAddLocation(NPC, -8.42, -11.12, -46.61, 2, 0)
	MovementLoopAddLocation(NPC, -8.25, -11.04, -50.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.97, -11.37, -47.96, 2, 0)
	MovementLoopAddLocation(NPC, -25.76, -12.43, -46.13, 2, 0)
	MovementLoopAddLocation(NPC, -30.42, -12.72, -44.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.47, -13.04, -42.1, 2, 0)
	MovementLoopAddLocation(NPC, -24.95, -13.11, -38.51, 2, 0)
	MovementLoopAddLocation(NPC, -22.83, -12.5, -36.42, 2, 0)
	MovementLoopAddLocation(NPC, -18.48, -11.72, -35.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.02, -11.46, -31.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.48, -11.29, -26.46, 2, 0)
	MovementLoopAddLocation(NPC, -42.51, -10.66, -24.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.26, -11.09, -23.05, 2, 0)
	MovementLoopAddLocation(NPC, -32.41, -11.15, -21.17, 2, 0)
end

