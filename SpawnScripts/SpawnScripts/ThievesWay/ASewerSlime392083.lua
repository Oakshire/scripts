--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392083.lua
 	Script Purpose	:	Waypoint Path for ASewerSlime392083.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:02:43 
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
	MovementLoopAddLocation(NPC, -124.29, 0.00, 219.89, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -116.81, 0.00, 220.38, 2, 0)
	-- MovementLoopAddLocation(NPC, -113.84, 0.09, 220.71, 2, 0)
	MovementLoopAddLocation(NPC, -113.77, 0.09, 220.64, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -114.24, 0.09, 221.06, 2, 0)
	MovementLoopAddLocation(NPC, -119.25, 0.00, 221.58, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -121.14, 0.00, 220.16, 2, 0)
	MovementLoopAddLocation(NPC, -123.69, 0.00, 218.04, 2, 0)
	MovementLoopAddLocation(NPC, -124.44, 0.00, 216.58, 2, 0)
	MovementLoopAddLocation(NPC, -124.43, 0.00, 216.56, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -120.10, 0.00, 218.21, 2, 0)
	MovementLoopAddLocation(NPC, -113.86, 0.09, 220.68, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -115.87, 0.00, 216.26, 2, 0)
	MovementLoopAddLocation(NPC, -116.58, 0.07, 215.48, 2, 0)
	MovementLoopAddLocation(NPC, -116.61, 0.07, 215.50, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -117.05, 0.01, 216.11, 2, 0)
	MovementLoopAddLocation(NPC, -120.65, 0.00, 219.13, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -119.86, 0.00, 218.67, 2, 0)
	-- MovementLoopAddLocation(NPC, -119.91, 0.00, 218.76, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -118.56, 0.00, 218.47, 2, 0)
	MovementLoopAddLocation(NPC, -118.52, 0.00, 218.50, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -118.83, 0.00, 220.00, 2, 0)
	MovementLoopAddLocation(NPC, -121.31, 0.00, 221.40, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -122.08, 0.00, 219.31, 2, 0)
	MovementLoopAddLocation(NPC, -122.36, 0.00, 216.59, 2, 0)
	MovementLoopAddLocation(NPC, -122.37, 0.00, 216.58, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -123.70, 0.00, 219.24, 2, 0)
end
