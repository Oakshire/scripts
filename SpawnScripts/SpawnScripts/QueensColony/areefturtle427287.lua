--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427287.lua
	Script Purpose	:	Waypoint Path for areefturtle427287.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:29:29 
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
	MovementLoopAddLocation(NPC, -28.83, -11.89, -82.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.16, -11.12, -83.17, 2, 0)
	MovementLoopAddLocation(NPC, -19.24, -10.4, -79.68, 2, 0)
	MovementLoopAddLocation(NPC, -13.14, -10.3, -72.31, 2, 0)
	MovementLoopAddLocation(NPC, -5.62, -11.16, -69.24, 2, 0)
	MovementLoopAddLocation(NPC, -1.48, -13.02, -67.19, 2, 0)
	MovementLoopAddLocation(NPC, 3.68, -13.23, -64.84, 2, 0)
	MovementLoopAddLocation(NPC, 10.05, -13.22, -59.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.09, -11.67, -56.32, 2, 0)
	MovementLoopAddLocation(NPC, -9.92, -11.33, -55.96, 2, 0)
	MovementLoopAddLocation(NPC, -18.5, -11.11, -50.97, 2, 0)
	MovementLoopAddLocation(NPC, -24.05, -11.76, -44.81, 2, 0)
	MovementLoopAddLocation(NPC, -25.61, -12.21, -40.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.39, -11.75, -30.16, 2, 0)
	MovementLoopAddLocation(NPC, -22.18, -11.52, -17.22, 2, 0)
	MovementLoopAddLocation(NPC, -21.89, -11.45, -6.12, 2, 0)
	MovementLoopAddLocation(NPC, -22.9, -11.42, 4.51, 2, 0)
	MovementLoopAddLocation(NPC, -21.75, -11.67, 8.86, 2, 0)
	MovementLoopAddLocation(NPC, -16.17, -12.41, 15.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.21, -12.87, 23.05, 2, 0)
	MovementLoopAddLocation(NPC, -39.29, -13.58, 30.2, 2, 0)
	MovementLoopAddLocation(NPC, -47.72, -11.78, 26.34, 2, 0)
	MovementLoopAddLocation(NPC, -51.38, -10.54, 23.77, 2, 0)
	MovementLoopAddLocation(NPC, -68.62, -10.21, 1.54, 2, 0)
	MovementLoopAddLocation(NPC, -81.03, -10.46, -7.22, 2, 0)
	MovementLoopAddLocation(NPC, -87.12, -11.66, -9.83, 2, 0)
	MovementLoopAddLocation(NPC, -88.9, -11.79, -13.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -87.09, -11.43, 1.08, 2, 0)
	MovementLoopAddLocation(NPC, -85.39, -10.52, 16.38, 2, 0)
	MovementLoopAddLocation(NPC, -90.12, -10.31, 28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.11, -10.41, 14.71, 2, 0)
	MovementLoopAddLocation(NPC, -66.29, -10.3, 1.1, 2, 0)
	MovementLoopAddLocation(NPC, -54.55, -10.3, -11.96, 2, 0)
	MovementLoopAddLocation(NPC, -51.38, -10.3, -24.58, 2, 0)
	MovementLoopAddLocation(NPC, -46.6, -10.3, -37.65, 2, 0)
	MovementLoopAddLocation(NPC, -42.87, -10.3, -54.31, 2, 0)
	MovementLoopAddLocation(NPC, -32.74, -10.73, -76.77, 2, 0)
end

