--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425446.lua
	Script Purpose	:	Waypoint Path for ashoalglider425446.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:13:24 
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
	MovementLoopAddLocation(NPC, -130.67, -12.48, 153.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.87, -12.61, 142.93, 2, 0)
	MovementLoopAddLocation(NPC, -148.69, -12.02, 142.24, 2, 0)
	MovementLoopAddLocation(NPC, -150.61, -12.03, 146.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.38, -12.12, 179.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.2, -12.91, 184.62, 2, 0)
	MovementLoopAddLocation(NPC, -112.39, -13.24, 190.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.12, -14.4, 183.93, 2, 0)
	MovementLoopAddLocation(NPC, -127.98, -12.93, 183.51, 2, 0)
	MovementLoopAddLocation(NPC, -136.25, -13.3, 183.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.66, -12.97, 182.05, 2, 0)
	MovementLoopAddLocation(NPC, -115.71, -13.43, 183.14, 2, 0)
	MovementLoopAddLocation(NPC, -112.21, -13.49, 188.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.47, -11.41, 185.14, 2, 0)
	MovementLoopAddLocation(NPC, -103.34, -11.3, 183.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.83, -12.13, 186.48, 2, 0)
	MovementLoopAddLocation(NPC, -113.1, -12.88, 188, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.13, -14.23, 192.16, 2, 0)
	MovementLoopAddLocation(NPC, -120.51, -14.48, 195.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.83, -12.11, 216.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.97, -14.37, 194.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.13, -13.09, 185.35, 2, 0)
	MovementLoopAddLocation(NPC, -105.26, -12.51, 179.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.22, -11.95, 173.78, 2, 0)
	MovementLoopAddLocation(NPC, -122.71, -12, 160.45, 2, 0)
	MovementLoopAddLocation(NPC, -125.9, -12.09, 159.34, 2, 0)
	MovementLoopAddLocation(NPC, -128.89, -12.45, 155.12, 2, 0)
end

