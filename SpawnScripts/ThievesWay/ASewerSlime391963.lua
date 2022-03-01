--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391963.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391963.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:29:14 
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
	MovementLoopAddLocation(NPC, -181.34, 0.02, 114.04, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.76, 0.00, 119.25, 2, 0)
	MovementLoopAddLocation(NPC, -181.68, 0.00, 121.75, 2, 0)
	MovementLoopAddLocation(NPC, -182.23, 0.00, 123.68, 2, 0)
	MovementLoopAddLocation(NPC, -182.23, 0.00, 123.67, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.03, 0.00, 122.09, 2, 0)
	MovementLoopAddLocation(NPC, -181.38, 0.01, 110.18, 2, 0)
	MovementLoopAddLocation(NPC, -181.19, 0.03, 109.21, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.25, 0.00, 121.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.11, 0.00, 121.35, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.25, 0.00, 122.14, 2, 0)
	MovementLoopAddLocation(NPC, -182.12, 0.00, 123.54, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.26, 0.00, 125.75, 2, 0)
	MovementLoopAddLocation(NPC, -182.30, 0.00, 126.30, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.95, 0.00, 125.92, 2, 0)
	MovementLoopAddLocation(NPC, -181.89, 0.00, 121.36, 2, 0)
	MovementLoopAddLocation(NPC, -181.22, 0.27, 117.05, 2, 0)
	MovementLoopAddLocation(NPC, -181.45, 0.01, 115.39, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.30, 0.02, 115.08, 2, 0)
	MovementLoopAddLocation(NPC, -183.40, 0.00, 109.33, 2, math.random(10, 22))
end

