--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427023.lua
	Script Purpose	:	Waypoint Path for areefturtle427023.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:15:57 
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
	MovementLoopAddLocation(NPC, -148.4, -14.77, 153.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.99, -15.17, 150.66, 2, 0)
	MovementLoopAddLocation(NPC, -143.53, -14.54, 147.28, 2, 0)
	MovementLoopAddLocation(NPC, -140.96, -12.77, 145.9, 2, 0)
	MovementLoopAddLocation(NPC, -139.79, -12.38, 145.06, 2, 0)
	MovementLoopAddLocation(NPC, -135.32, -12.05, 143.63, 2, 0)
	MovementLoopAddLocation(NPC, -126.91, -11.74, 138.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.88, -12.17, 143.46, 2, 0)
	MovementLoopAddLocation(NPC, -131.53, -12.21, 147.33, 2, 0)
	MovementLoopAddLocation(NPC, -136.86, -13.82, 151.93, 2, 0)
	MovementLoopAddLocation(NPC, -138.27, -13.37, 152.32, 2, 0)
	MovementLoopAddLocation(NPC, -138.84, -12.43, 153.25, 2, 0)
	MovementLoopAddLocation(NPC, -141.34, -12.43, 157.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.36, -12.56, 153.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.83, -12.24, 153.18, 2, 0)
	MovementLoopAddLocation(NPC, -121.37, -12.24, 151.72, 2, 0)
	MovementLoopAddLocation(NPC, -117.95, -12.21, 149.83, 2, 0)
	MovementLoopAddLocation(NPC, -103.14, -11.82, 145.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.73, -11.63, 134.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.99, -11.74, 134.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.11, -11.79, 108.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.79, -10.41, 111.45, 2, 0)
	MovementLoopAddLocation(NPC, -110.49, -11.86, 114.33, 2, 0)
	MovementLoopAddLocation(NPC, -108.78, -11.87, 116.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.43, -11.72, 145.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.54, -12.25, 149.68, 2, 0)
	MovementLoopAddLocation(NPC, -145.14, -14.74, 150.77, 2, 0)
end

