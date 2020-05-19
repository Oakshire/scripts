--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392096.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392096.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:02:47 
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
	MovementLoopAddLocation(NPC, -121.97, 0.04, 222.64, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.16, 0.00, 222.32, 2, 0)
	MovementLoopAddLocation(NPC, -117.94, 0.00, 221.87, 2, 0)
	MovementLoopAddLocation(NPC, -117.96, 0.00, 221.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.29, 0.00, 221.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.38, 0.00, 219.57, 2, 0)
	MovementLoopAddLocation(NPC, -124.23, 0.00, 217.57, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -120.93, 0.00, 218.48, 2, 0)
	MovementLoopAddLocation(NPC, -120.98, 0.00, 218.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -123.37, 0.01, 221.34, 2, 0)
	MovementLoopAddLocation(NPC, -124.83, 0.14, 221.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.84, 0.05, 220.46, 2, 0)
	MovementLoopAddLocation(NPC, -125.27, 0.00, 219.17, 2, 0)
	MovementLoopAddLocation(NPC, -125.24, 0.00, 219.17, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.76, 0.00, 217.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.65, 0.00, 218.58, 2, 0)
	MovementLoopAddLocation(NPC, -118.78, 0.00, 221.29, 2, 0)
	MovementLoopAddLocation(NPC, -117.70, 0.00, 222.32, 2, 0)
	MovementLoopAddLocation(NPC, -117.79, 0.00, 222.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.79, 0.00, 216.67, 2, 0)
	MovementLoopAddLocation(NPC, -120.44, 0.03, 215.92, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -114.99, 0.00, 218.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.33, 0.00, 218.70, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.49, 0.00, 221.14, 2, 0)
end
