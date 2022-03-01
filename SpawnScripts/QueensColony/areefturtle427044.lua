--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427044.lua
	Script Purpose	:	Waypoint Path for areefturtle427044.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:03 
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
	MovementLoopAddLocation(NPC, -84.58, -10.63, 17.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.31, -10.64, 12.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.11, -10.98, 12.57, 2, 0)
	MovementLoopAddLocation(NPC, -65.82, -10.08, 15.78, 2, 0)
	MovementLoopAddLocation(NPC, -46.59, -12, 25.55, 2, 0)
	MovementLoopAddLocation(NPC, -40.34, -12.75, 26.24, 2, 0)
	MovementLoopAddLocation(NPC, -22.6, -14.26, 23.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.72, -13.62, 37.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.96, -10.98, 14.87, 2, 0)
	MovementLoopAddLocation(NPC, -32.64, -10.59, 4.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.18, -10.99, -6.05, 2, 0)
	MovementLoopAddLocation(NPC, -12.14, -11.25, -23.96, 2, 0)
	MovementLoopAddLocation(NPC, -4.61, -12.15, -43.45, 2, 0)
	MovementLoopAddLocation(NPC, -2.99, -11.84, -51.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.17, -11.61, -39.47, 2, 0)
	MovementLoopAddLocation(NPC, -12.76, -11.44, -25.74, 2, 0)
	MovementLoopAddLocation(NPC, -16.63, -11.43, -18.28, 2, 0)
	MovementLoopAddLocation(NPC, -20.43, -11.79, -12.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.41, -11.37, -27.64, 2, 0)
	MovementLoopAddLocation(NPC, -22.44, -11.35, -29.93, 2, 0)
	MovementLoopAddLocation(NPC, -20.31, -11.46, -34.38, 2, 0)
	MovementLoopAddLocation(NPC, -15.95, -11.06, -52.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.76, -10.45, -56.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.52, -10.14, -17.61, 2, 0)
	MovementLoopAddLocation(NPC, -64.73, -10.4, -8.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.35, -10.49, -6.74, 2, 0)
	MovementLoopAddLocation(NPC, -81.23, -10.53, 1.69, 2, 0)
end

