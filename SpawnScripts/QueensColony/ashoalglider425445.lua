--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425445.lua
	Script Purpose	:	Waypoint Path for ashoalglider425445.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:08:08 
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
	MovementLoopAddLocation(NPC, -134.02, -12.47, 97.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.78, -11.56, 129, 2, 0)
	MovementLoopAddLocation(NPC, -113.86, -11.84, 158.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.06, -11.85, 159.78, 2, 0)
	MovementLoopAddLocation(NPC, -108.72, -11.55, 164.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.87, -12.12, 175.79, 2, 0)
	MovementLoopAddLocation(NPC, -114.42, -12.91, 179.4, 2, 0)
	MovementLoopAddLocation(NPC, -120.35, -14.17, 184.45, 2, 0)
	MovementLoopAddLocation(NPC, -123.11, -14.54, 188.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.08, -13.96, 185.64, 2, 0)
	MovementLoopAddLocation(NPC, -112.36, -13.7, 183.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.49, -12.88, 181.86, 2, 0)
	MovementLoopAddLocation(NPC, -107.17, -11.15, 177.04, 2, 0)
	MovementLoopAddLocation(NPC, -100.08, -11.27, 167.99, 2, 0)
	MovementLoopAddLocation(NPC, -95.71, -11.64, 164.82, 2, 0)
	MovementLoopAddLocation(NPC, -95.72, -11.6, 156.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.99, -11.62, 165.95, 2, 0)
	MovementLoopAddLocation(NPC, -122.33, -12, 173.4, 2, 0)
	MovementLoopAddLocation(NPC, -128.9, -12.13, 175.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.97, -12.52, 172.79, 2, 0)
	MovementLoopAddLocation(NPC, -123.85, -12.01, 162.74, 2, 0)
	MovementLoopAddLocation(NPC, -122.08, -11.99, 144.67, 2, 0)
	MovementLoopAddLocation(NPC, -121.5, -11.81, 142.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.11, -11.56, 108.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.8, -11.06, 119.87, 2, 0)
	MovementLoopAddLocation(NPC, -137.7, -11.3, 119.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.4, -11.87, 113.31, 2, 0)
end

