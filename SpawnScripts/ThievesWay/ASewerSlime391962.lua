--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391962.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391962.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:29:11 
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
	MovementLoopAddLocation(NPC, -182.40, 0.00, 125.31, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.93, 0.00, 123.17, 2, 0)
	MovementLoopAddLocation(NPC, -180.47, 0.05, 120.43, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.40, 0.25, 117.07, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.28, 0.00, 121.11, 2, 0)
	MovementLoopAddLocation(NPC, -183.46, 0.01, 126.02, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.32, 0.00, 121.55, 2, 0)
	MovementLoopAddLocation(NPC, -181.65, 0.00, 110.78, 2, 0)
	MovementLoopAddLocation(NPC, -181.50, 0.00, 109.48, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.38, 0.01, 113.58, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.98, 0.00, 124.23, 2, 0)
end
