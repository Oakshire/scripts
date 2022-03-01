--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428443.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428443.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:54 
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
	MovementLoopAddLocation(NPC, -35.12, -10.7, 7.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.55, -10.7, -0.08, 2, 0)
	MovementLoopAddLocation(NPC, -56.08, -10.7, -24.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.36, -10.7, -36.98, 2, 0)
	MovementLoopAddLocation(NPC, -42.58, -10.7, -50.41, 2, 0)
	MovementLoopAddLocation(NPC, -30.62, -10.7, -75.19, 2, 0)
	MovementLoopAddLocation(NPC, -27.62, -10.65, -80.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.13, -10.7, -66.54, 2, 0)
	MovementLoopAddLocation(NPC, -38.58, -11.05, -55.12, 2, 0)
	MovementLoopAddLocation(NPC, -28.32, -10.7, -35.8, 2, 0)
	MovementLoopAddLocation(NPC, -27.12, -10.7, -0.51, 2, 0)
	MovementLoopAddLocation(NPC, -27.44, -11.38, 8.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.9, -11.29, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, -21.7, -11.38, -18.54, 2, 0)
	MovementLoopAddLocation(NPC, -15.29, -11.68, -28.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.21, -12.01, -28.26, 2, 0)
	MovementLoopAddLocation(NPC, -28.05, -12.65, -27.67, 2, 0)
	MovementLoopAddLocation(NPC, -31.43, -12.63, -26.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.37, -12.18, -23.09, 2, 0)
	MovementLoopAddLocation(NPC, -12.72, -11.96, -10.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.17, -12.2, 2.53, 2, 0)
	MovementLoopAddLocation(NPC, -20.79, -12.34, 10.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.3, -10.67, 5.68, 2, 0)
	MovementLoopAddLocation(NPC, -36.27, -10.7, 1, 2, 0)
	MovementLoopAddLocation(NPC, -48.75, -10.7, -4.37, 2, 0)
	MovementLoopAddLocation(NPC, -52.52, -11.02, -8.46, 2, 0)
	MovementLoopAddLocation(NPC, -55.01, -11.03, -12.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.75, -10.7, -4.75, 2, 0)
	MovementLoopAddLocation(NPC, -34.37, -10.7, -1.48, 2, 0)
	MovementLoopAddLocation(NPC, -29.74, -10.7, 2.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.29, -11.07, 6.69, 2, 0)
	MovementLoopAddLocation(NPC, -37.51, -11.07, 8.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.82, -10.7, 3.91, 2, 0)
	MovementLoopAddLocation(NPC, -55.17, -10.7, -22.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.07, -10.7, -27.5, 2, 0)
	MovementLoopAddLocation(NPC, -45.73, -10.7, -41.3, 2, math.random(10, 20))
end

