--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392093.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392093.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:02:58 
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
	MovementLoopAddLocation(NPC, -120.97, 0.17, 214.80, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -125.26, 0.05, 215.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -123.91, 0.00, 216.99, 2, 0)
	MovementLoopAddLocation(NPC, -122.71, 0.00, 217.54, 2, 0)
	MovementLoopAddLocation(NPC, -122.71, 0.00, 217.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.16, 0.00, 217.66, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -125.05, 0.00, 217.53, 2, 0)
	MovementLoopAddLocation(NPC, -125.65, 0.00, 216.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -123.58, 0.00, 218.36, 2, 0)
	MovementLoopAddLocation(NPC, -122.68, 0.00, 219.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -122.51, 0.00, 220.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -118.53, 0.00, 220.30, 2, 0)
	MovementLoopAddLocation(NPC, -116.34, 0.00, 219.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.30, 0.00, 220.67, 2, 0)
	MovementLoopAddLocation(NPC, -118.52, 0.00, 221.95, 2, 0)
	MovementLoopAddLocation(NPC, -119.90, 0.09, 223.41, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.97, 0.00, 220.13, 2, 0)
	MovementLoopAddLocation(NPC, -120.45, 0.03, 215.88, 2, 0)
	MovementLoopAddLocation(NPC, -123.48, 0.00, 218.98, 2, 0)
	MovementLoopAddLocation(NPC, -124.31, 0.00, 219.60, 2, 0)
	MovementLoopAddLocation(NPC, -124.31, 0.00, 219.57, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.17, 0.00, 219.88, 2, 0)
	-- MovementLoopAddLocation(NPC, -120.15, 0.00, 221.99, 2, 0)
	MovementLoopAddLocation(NPC, -119.48, 0.00, 222.47, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.54, 0.00, 220.41, 2, 0)
	MovementLoopAddLocation(NPC, -114.57, 0.00, 217.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -113.68, 0.00, 216.77, 2, 0)
	MovementLoopAddLocation(NPC, -113.67, 0.00, 216.79, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -117.97, 0.00, 217.26, 2, 0)
end
