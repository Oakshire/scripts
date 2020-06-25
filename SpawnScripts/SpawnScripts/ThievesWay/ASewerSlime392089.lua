--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392089.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392089.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:02:50 
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
	MovementLoopAddLocation(NPC, -113.12, 0.08, 215.32, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -115.95, 0.00, 220.87, 2, 0)
	MovementLoopAddLocation(NPC, -117.40, 0.02, 222.56, 2, 0)
	MovementLoopAddLocation(NPC, -117.41, 0.02, 222.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.77, 0.00, 222.17, 2, 0)
	MovementLoopAddLocation(NPC, -122.30, 0.00, 221.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -119.87, 0.00, 220.34, 2, 0)
	MovementLoopAddLocation(NPC, -114.76, 0.00, 217.87, 2, 0)
	MovementLoopAddLocation(NPC, -113.75, 0.00, 217.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -121.89, 0.00, 218.92, 2, 0)
	MovementLoopAddLocation(NPC, -123.25, 0.00, 218.64, 2, 0)
	MovementLoopAddLocation(NPC, -123.24, 0.00, 218.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -115.69, 0.00, 219.28, 2, 0)
	MovementLoopAddLocation(NPC, -114.04, 0.01, 219.68, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -114.20, 0.00, 219.51, 2, 0)
	MovementLoopAddLocation(NPC, -121.38, 0.00, 218.17, 2, 0)
	MovementLoopAddLocation(NPC, -124.23, 0.00, 217.01, 2, 0)
	MovementLoopAddLocation(NPC, -125.40, 0.00, 216.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -125.12, 0.00, 218.28, 2, 0)
	MovementLoopAddLocation(NPC, -120.18, 0.15, 223.69, 2, 0)
	MovementLoopAddLocation(NPC, -115.09, 0.11, 222.15, 2, 0)
	MovementLoopAddLocation(NPC, -113.88, 0.01, 219.56, 2, 0)
end
