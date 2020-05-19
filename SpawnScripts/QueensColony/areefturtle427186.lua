--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427186.lua
	Script Purpose	:	Waypoint Path for areefturtle427186.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:15 
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
	MovementLoopAddLocation(NPC, -37.52, -12.47, 30, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.64, -11.64, 24.41, 2, 0)
	MovementLoopAddLocation(NPC, -49.89, -10.66, 17.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.96, -11.52, 20.72, 2, 0)
	MovementLoopAddLocation(NPC, -46.11, -12.42, 24.56, 2, 0)
	MovementLoopAddLocation(NPC, -45.01, -12.74, 26.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.92, -12.42, 17.91, 2, 0)
	MovementLoopAddLocation(NPC, -34.36, -12.3, 16.43, 2, 0)
	MovementLoopAddLocation(NPC, -28.11, -12.26, 8.36, 2, 0)
	MovementLoopAddLocation(NPC, -22.87, -12.76, 0.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.95, -11.97, -1.77, 2, 0)
	MovementLoopAddLocation(NPC, -18.85, -11.78, -4.9, 2, 0)
	MovementLoopAddLocation(NPC, -15.58, -12.16, -15.86, 2, 0)
	MovementLoopAddLocation(NPC, -8.11, -11.83, -31.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.43, -11.74, -34.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.08, -11.92, -38.04, 2, 0)
	MovementLoopAddLocation(NPC, -24.5, -12.18, -38.92, 2, 0)
	MovementLoopAddLocation(NPC, -30.89, -12.57, -41.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.28, -12.44, -31.96, 2, 0)
	MovementLoopAddLocation(NPC, -26, -11.62, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, -25.49, -11.36, -16.93, 2, 0)
	MovementLoopAddLocation(NPC, -22.8, -11.7, -8.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.95, -11.94, 0.54, 2, 0)
	MovementLoopAddLocation(NPC, -25.89, -11.99, 6.76, 2, 0)
	MovementLoopAddLocation(NPC, -27.94, -12.34, 14.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.07, -12.72, 28.03, 2, 0)
end

