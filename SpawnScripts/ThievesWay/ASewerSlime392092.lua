--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392092.lua
	Script Purpose	:	Waypoint Path for slime15004.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:02:54 
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
	MovementLoopAddLocation(NPC, -115.82, 0.00, 217.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -120.40, 0.00, 219.99, 2, 0)
	MovementLoopAddLocation(NPC, -122.54, 0.00, 221.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -123.75, 0.00, 218.40, 2, 0)
	MovementLoopAddLocation(NPC, -123.59, 0.00, 216.84, 2, 0)
	MovementLoopAddLocation(NPC, -123.53, 0.00, 216.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -124.46, 0.00, 216.34, 2, 0)
	MovementLoopAddLocation(NPC, -125.04, 0.20, 214.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -126.97, 0.04, 215.82, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -120.83, 0.23, 214.51, 2, 0)
	MovementLoopAddLocation(NPC, -115.65, 0.14, 214.97, 2, 0)
	MovementLoopAddLocation(NPC, -113.89, 0.04, 215.76, 2, 0)
	MovementLoopAddLocation(NPC, -113.91, 0.03, 215.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -116.03, 0.01, 216.05, 2, 0)
	MovementLoopAddLocation(NPC, -122.32, 0.00, 219.49, 2, math.random(12, 22))
end
