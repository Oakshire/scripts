--[[
	Script Name		:	SpawnScripts/Neriak/Ultra.lua
	Script Purpose	:	Waypoint Path for Ultra
	Script Author	:	Cynnar
	Script Date		:	5/14/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
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
	ranpause = math.random(0, 5)
	
	MovementLoopAddLocation(NPC, 23.45, 12.23, 76.7, 2, 0)
	MovementLoopAddLocation(NPC, 20.26, 11.83, 80.91, 2, 0)
	MovementLoopAddLocation(NPC, 16.38, 11.3, 81.25, 2, 0)
	MovementLoopAddLocation(NPC, 7.22, 12.7, 81.75, 2, ranpause)
	MovementLoopAddLocation(NPC, -0.56, 11.69, 79.6, 2, 0)
	MovementLoopAddLocation(NPC, -11.78, 11.29, 77.71, 2, 0)
	MovementLoopAddLocation(NPC, -22.61, 11.5, 73.99, 2, 0)
	MovementLoopAddLocation(NPC, -35.41, 12.49, 90.55, 2, ranpause)
	MovementLoopAddLocation(NPC, -40.87, 12.13, 97.98, 2, 0)
	MovementLoopAddLocation(NPC, -41.03, 11.95, 110.39, 2, 0)
	MovementLoopAddLocation(NPC, -47.99, 11.84, 112.17, 2, 0)
	MovementLoopAddLocation(NPC, -52.15, 11.72, 117.36, 2, ranpause)
	MovementLoopAddLocation(NPC, -53.28, 11.58, 126.31, 2, 0)
	MovementLoopAddLocation(NPC, -63.31, 11.37, 137.8, 2, ranpause)
	MovementLoopAddLocation(NPC, -67.02, 11.8, 162.33, 2, 0)
	MovementLoopAddLocation(NPC, -69.51, 11.72, 172.74, 2, 0)
	MovementLoopAddLocation(NPC, -76.3, 11.72, 186.64, 2, 0)
	MovementLoopAddLocation(NPC, -66.86, 11.72, 199.31, 2, ranpause)
	MovementLoopAddLocation(NPC, -69.13, 11.72, 204.01, 2, 0)
	MovementLoopAddLocation(NPC, -69.6, 11.72, 211.01, 2, 0)
	MovementLoopAddLocation(NPC, -73.95, 11.72, 214.67, 2, 0)
	MovementLoopAddLocation(NPC, -74.56, 11.72, 221.48, 2, 0)
	MovementLoopAddLocation(NPC, -68.27, 11.72, 238.99, 2, 0)
	MovementLoopAddLocation(NPC, -66.53, 11.72, 244.13, 2, 0)
	MovementLoopAddLocation(NPC, -71.22, 11.72, 262.8, 2, ranpause)
	MovementLoopAddLocation(NPC, -76.99, 11.72, 247.16, 2, 0)
	MovementLoopAddLocation(NPC, -77.28, 11.72, 229.13, 2, 0)
	MovementLoopAddLocation(NPC, -66.43, 11.72, 224.15, 2, 0)
	MovementLoopAddLocation(NPC, -70.96, 11.72, 212.55, 2, 0)
	MovementLoopAddLocation(NPC, -72.21, 11.72, 195.16, 2, 0)
	MovementLoopAddLocation(NPC, -66.2, 11.72, 192.25, 2, 0)
	MovementLoopAddLocation(NPC, -76.73, 11.72, 180.5, 2, 0)
	MovementLoopAddLocation(NPC, -76.46, 11.72, 163.66, 2, ranpause)
	MovementLoopAddLocation(NPC, -67.82, 11.38, 136.76, 2, 0)
	MovementLoopAddLocation(NPC, -54.99, 11.66, 119.46, 2, ranpause)
	MovementLoopAddLocation(NPC, -35.85, 12.14, 101.02, 2, 0)
	MovementLoopAddLocation(NPC, -36.44, 12.48, 90.46, 2, ranpause)
	MovementLoopAddLocation(NPC, -16.5, 11.26, 81.01, 2, 0)
	MovementLoopAddLocation(NPC, -5.69, 11.24, 84.94, 2, 0)
	MovementLoopAddLocation(NPC, 3.72, 12.42, 87.21, 2, ranpause)
	MovementLoopAddLocation(NPC, 13.59, 11.49, 86.42, 2, 0)
	MovementLoopAddLocation(NPC, 24.97, 12.06, 83.18, 2, 0)
	MovementLoopAddLocation(NPC, 29.09, 12.25, 75.68, 2, 0)
	MovementLoopAddLocation(NPC, 28.37, 13.43, 66.98, 2, 4)
	MovementLoopAddLocation(NPC, 30.13, 15.42, 49.57, 2, 0)
	MovementLoopAddLocation(NPC, 30.09, 16.22, 44.1, 2, 0)
	MovementLoopAddLocation(NPC, 24.04, 15.18, 51.67, 2, 0)
	MovementLoopAddLocation(NPC, 28.12, 13.82, 63.34, 2, ranpause)
	MovementLoopAddLocation(NPC, 28.75, 13.48, 67.85, 2, 0)
end

