--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425444.lua
	Script Purpose	:	Waypoint Path for ashoalglider425444.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 06:00:13 
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
	MovementLoopAddLocation(NPC, -79.13, -13.19, 229.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.45, -13.15, 216.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.84, -13.05, 217.15, 2, 0)
	MovementLoopAddLocation(NPC, -129.8, -13.23, 219.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.05, -12.39, 217.16, 2, 0)
	MovementLoopAddLocation(NPC, -126.78, -12.41, 214.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.42, -13.06, 218.87, 2, 0)
	MovementLoopAddLocation(NPC, -112.1, -14.44, 233.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.55, -11.73, 241.39, 2, 0)
	MovementLoopAddLocation(NPC, -106.9, -11.83, 246.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.97, -12.63, 239.73, 2, 0)
	MovementLoopAddLocation(NPC, -139.81, -13.17, 231.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.72, -11.99, 231.02, 2, 0)
	MovementLoopAddLocation(NPC, -106.91, -11.91, 227.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.42, -13.1, 239.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.33, -14.27, 231.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.38, -14.51, 229.89, 2, 0)
	MovementLoopAddLocation(NPC, -83.49, -13.1, 228.55, 2, 0)
end


