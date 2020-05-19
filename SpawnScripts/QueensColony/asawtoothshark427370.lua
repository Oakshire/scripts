--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427370.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427370.lua
	Script Author	:	Rylec
	Script Date	:	11-11-2019 06:43:47 
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
	MovementLoopAddLocation(NPC, -123.26, -11.78, 155.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.77, -11.76, 119.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.39, -10.38, 119.71, 2, 0)
	MovementLoopAddLocation(NPC, -143.93, -10.64, 119.06, 2, 0)
	MovementLoopAddLocation(NPC, -151.49, -12.35, 113.23, 2, 0)
	MovementLoopAddLocation(NPC, -148.18, -12.41, 100.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -141.53, -12.11, 97.27, 2, 0)
	MovementLoopAddLocation(NPC, -135.79, -11.63, 105.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.27, -11.6, 96.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.12, -11.46, 88.14, 2, 0)
	MovementLoopAddLocation(NPC, -122.96, -10.54, 88.79, 2, 0)
	MovementLoopAddLocation(NPC, -119.01, -10.43, 93.55, 2, 0)
	MovementLoopAddLocation(NPC, -115.14, -11.42, 96.76, 2, 0)
	MovementLoopAddLocation(NPC, -105.48, -11.88, 106.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.54, -10.27, 98.01, 2, 0)
	MovementLoopAddLocation(NPC, -129.42, -11.43, 92.94, 2, 0)
	MovementLoopAddLocation(NPC, -140.08, -12.69, 89.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.03, -12.34, 106.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.23, -11.37, 113.15, 2, 0)
	MovementLoopAddLocation(NPC, -123.44, -11.63, 121.09, 2, 0)
	MovementLoopAddLocation(NPC, -118.51, -11.48, 134.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.89, -12.41, 130.04, 2, 0)
	MovementLoopAddLocation(NPC, -138.14, -12.66, 124.03, 2, 0)
	MovementLoopAddLocation(NPC, -141.41, -12.84, 115.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.02, -12.6, 128.15, 2, 0)
	MovementLoopAddLocation(NPC, -131.81, -11.36, 132.01, 2, 0)
	MovementLoopAddLocation(NPC, -119.54, -11.88, 127.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.19, -12.24, 168.08, 2, 0)
	MovementLoopAddLocation(NPC, -117.99, -13.1, 179.93, 2, 0)
	MovementLoopAddLocation(NPC, -117.86, -13.13, 193.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.67, -13.1, 183.89, 2, 0)
	MovementLoopAddLocation(NPC, -141.73, -13.01, 183.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.93, -12.39, 158.97, 2, 0)
end

