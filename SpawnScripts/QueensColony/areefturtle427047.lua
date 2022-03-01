--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427047.lua
	Script Purpose	:	Waypoint Path for areefturtle427047.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:03 
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
	MovementLoopAddLocation(NPC, -49.41, -11.83, -60.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.4, -12.01, -65.59, 2, 0)
	MovementLoopAddLocation(NPC, -34.83, -11.83, -80.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.44, -11.74, -75.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.66, -11.76, -71.22, 2, 0)
	MovementLoopAddLocation(NPC, -39.7, -11.66, -67.23, 2, 0)
	MovementLoopAddLocation(NPC, -41.93, -10.2, -53.5, 2, 0)
	MovementLoopAddLocation(NPC, -44.39, -10.32, -41.03, 2, 0)
	MovementLoopAddLocation(NPC, -45.56, -10.73, -38.81, 2, 0)
	MovementLoopAddLocation(NPC, -46.07, -10.58, -36.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.61, -10.45, -23.13, 2, 0)
	MovementLoopAddLocation(NPC, -37.61, -10.31, -3.19, 2, 0)
	MovementLoopAddLocation(NPC, -35.76, -10.51, 6.31, 2, 0)
	MovementLoopAddLocation(NPC, -34.5, -11.47, 11.31, 2, 0)
	MovementLoopAddLocation(NPC, -34.58, -12.1, 15.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.88, -11.49, 18.65, 2, 0)
	MovementLoopAddLocation(NPC, -46.3, -11.22, 20.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.97, -10.57, 15.68, 2, 0)
	MovementLoopAddLocation(NPC, -46.47, -10.2, 11.32, 2, 0)
	MovementLoopAddLocation(NPC, -50.71, -10.39, -2.82, 2, 0)
	MovementLoopAddLocation(NPC, -57.02, -10.58, -8.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.23, -10.27, 2.49, 2, 0)
	MovementLoopAddLocation(NPC, -47.18, -10.52, 12.46, 2, 0)
	MovementLoopAddLocation(NPC, -45.82, -12.12, 18.74, 2, 0)
	MovementLoopAddLocation(NPC, -44.32, -12.45, 22.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.65, -11.73, 18.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.48, -11.5, 15.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.05, -10.21, -0.71, 2, 0)
	MovementLoopAddLocation(NPC, -29.3, -10.29, -8.17, 2, 0)
	MovementLoopAddLocation(NPC, -32.52, -10.56, -13.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.91, -10.2, -21.09, 2, 0)
	MovementLoopAddLocation(NPC, -30.33, -10.13, -61.89, 2, 0)
	MovementLoopAddLocation(NPC, -35.3, -10.26, -72.35, 2, 0)
	MovementLoopAddLocation(NPC, -33.03, -11.59, -79.33, 2, 0)
	MovementLoopAddLocation(NPC, -31.35, -11.88, -81.16, 2, math.random(10, 20))
end

