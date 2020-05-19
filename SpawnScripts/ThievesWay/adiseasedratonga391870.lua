--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391870.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391870.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:43:12 
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
	MovementLoopAddLocation(NPC, -182.32, 0.00, 119.62, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.80, 0.00, 112.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.10, 0.00, 119.15, 2, 0)
	MovementLoopAddLocation(NPC, -182.94, 0.00, 126.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.23, 0.00, 124.97, 2, 0)
	MovementLoopAddLocation(NPC, -181.55, 0.00, 119.12, 2, 0)
	MovementLoopAddLocation(NPC, -182.87, 0.00, 111.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.45, 0.01, 108.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.23, 0.00, 122.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.73, 0.00, 126.59, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.64, 0.24, 117.11, 2, 0)
	MovementLoopAddLocation(NPC, -182.34, 0.00, 111.92, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.93, 0.00, 121.43, 2, 0)
	MovementLoopAddLocation(NPC, -182.28, 0.00, 123.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.01, 0.00, 120.46, 2, 0)
	MovementLoopAddLocation(NPC, -182.55, 0.24, 117.20, 2, math.random(12, 22))
end


