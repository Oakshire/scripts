--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427340.lua
	Script Purpose	:	Waypoint Path for areefturtle427340.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:54 
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
	MovementLoopAddLocation(NPC, -34.71, -13.61, 24.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.11, -12.28, 20.86, 2, 0)
	MovementLoopAddLocation(NPC, -27.51, -11.75, 15.62, 2, 0)
	MovementLoopAddLocation(NPC, -26.07, -11.47, 11.79, 2, 0)
	MovementLoopAddLocation(NPC, -15.56, -11.75, -5.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.16, -12.23, -24.29, 2, 0)
	MovementLoopAddLocation(NPC, -25.61, -12.41, -29.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.46, -10.42, -41.8, 2, 0)
	MovementLoopAddLocation(NPC, -41.7, -10.46, -49.89, 2, 0)
	MovementLoopAddLocation(NPC, -44.28, -11.29, -54.64, 2, 0)
	MovementLoopAddLocation(NPC, -47.67, -11.6, -57.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.62, -11.19, -56.03, 2, 0)
	MovementLoopAddLocation(NPC, -46.45, -10.51, -55.33, 2, 0)
	MovementLoopAddLocation(NPC, -44.51, -10.44, -33.1, 2, 0)
	MovementLoopAddLocation(NPC, -36.96, -10.35, 5.79, 2, 0)
	MovementLoopAddLocation(NPC, -34.68, -11.12, 12.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.28, -11.8, 19.71, 2, 0)
	MovementLoopAddLocation(NPC, -32.83, -11.95, 30.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.33, -12.17, 19.55, 2, 0)
	MovementLoopAddLocation(NPC, -27.81, -11.69, 4.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.75, -10.29, -3.25, 2, 0)
	MovementLoopAddLocation(NPC, -32.34, -10.23, -30.87, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -11.38, -34.4, 2, 0)
	MovementLoopAddLocation(NPC, -40.17, -12.18, -34.92, 2, 0)
	MovementLoopAddLocation(NPC, -43.47, -12.37, -33.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.13, -11.82, -35.26, 2, 0)
	MovementLoopAddLocation(NPC, -23.36, -12.15, -36.46, 2, 0)
	MovementLoopAddLocation(NPC, -10.78, -11.77, -40.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25, -11.21, -28.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.99, -11.36, -19.46, 2, 0)
	MovementLoopAddLocation(NPC, -25.21, -11.3, -15.42, 2, 0)
	MovementLoopAddLocation(NPC, -24.06, -11.37, -3.39, 2, 0)
	MovementLoopAddLocation(NPC, -20.84, -12.34, 2, 2, 0)
	MovementLoopAddLocation(NPC, -19.72, -13.41, 8.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.2, -11.22, 8.03, 2, 0)
	MovementLoopAddLocation(NPC, -38.58, -10.7, 7.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.32, -11.12, 13.13, 2, 0)
	MovementLoopAddLocation(NPC, -37.67, -12.39, 19.1, 2, 0)
	MovementLoopAddLocation(NPC, -37.56, -13.25, 22.5, 2, 0)
end

