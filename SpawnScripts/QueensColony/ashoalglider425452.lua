--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425452.lua
	Script Purpose	:	Waypoint Path for ashoalglider425452.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:16:13 
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
	MovementLoopAddLocation(NPC, -141.11, -11.23, 108.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.89, -11.08, 108.79, 2, 0)
	MovementLoopAddLocation(NPC, -125.63, -11.41, 102.13, 2, 0)
	MovementLoopAddLocation(NPC, -120.17, -11.61, 99.6, 2, 0)
	MovementLoopAddLocation(NPC, -112.05, -11.67, 104.06, 2, 0)
	MovementLoopAddLocation(NPC, -105.15, -11.57, 108.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.53, -12.01, 117.93, 2, 0)
	MovementLoopAddLocation(NPC, -132.05, -12.55, 119.84, 2, 0)
	MovementLoopAddLocation(NPC, -132.23, -12.53, 123.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.2, -11.93, 127.8, 2, 0)
	MovementLoopAddLocation(NPC, -117.79, -11.5, 142.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.99, -11.1, 160.22, 2, 0)
	MovementLoopAddLocation(NPC, -119.71, -11.41, 164.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.89, -10.94, 160.24, 2, 0)
	MovementLoopAddLocation(NPC, -102.77, -10.95, 157.69, 2, 0)
	MovementLoopAddLocation(NPC, -94.39, -11.34, 157.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.77, -11.48, 168.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.32, -11.9, 176.12, 2, 0)
	MovementLoopAddLocation(NPC, -117.28, -12.76, 179.91, 2, 0)
	MovementLoopAddLocation(NPC, -124.89, -13.29, 183.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121, -11.96, 165.11, 2, 0)
	MovementLoopAddLocation(NPC, -115.9, -11.49, 105.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.82, -10.41, 99.66, 2, 0)
	MovementLoopAddLocation(NPC, -128.98, -10.49, 93.41, 2, 0)
	MovementLoopAddLocation(NPC, -141.91, -12.28, 88.96, 2, 0)
	MovementLoopAddLocation(NPC, -144.79, -12.28, 90.43, 2, math.random(10, 20))
end

