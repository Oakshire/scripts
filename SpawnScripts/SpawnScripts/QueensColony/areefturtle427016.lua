--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427016.lua
	Script Purpose	:	Waypoint Path for areefturtle427016.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:58 
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
	MovementLoopAddLocation(NPC, -114.5, -14.68, 233.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.65, -14.74, 237.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.87, -14.3, 240.05, 2, 0)
	MovementLoopAddLocation(NPC, -93.45, -14.25, 238.51, 2, 0)
	MovementLoopAddLocation(NPC, -88.61, -14.17, 233.37, 2, 0)
	MovementLoopAddLocation(NPC, -87.08, -13.47, 231.95, 2, 0)
	MovementLoopAddLocation(NPC, -83.65, -13.42, 231.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.76, -14.26, 229.62, 2, 0)
	MovementLoopAddLocation(NPC, -109.26, -14.72, 218.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.53, -13.4, 217.95, 2, 0)
	MovementLoopAddLocation(NPC, -80.74, -11.32, 216.65, 2, 0)
	MovementLoopAddLocation(NPC, -74.04, -10.99, 214.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.17, -11.41, 212.9, 2, 0)
	MovementLoopAddLocation(NPC, -78.23, -11.7, 205.41, 2, 0)
	MovementLoopAddLocation(NPC, -87.13, -12.93, 188.95, 2, 0)
	MovementLoopAddLocation(NPC, -89.32, -12.86, 187.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -83.66, -11.29, 196.05, 2, 0)
	MovementLoopAddLocation(NPC, -81.74, -11.36, 199.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.07, -12.34, 199.98, 2, 0)
	MovementLoopAddLocation(NPC, -113.24, -14.73, 217.97, 2, 0)
end

