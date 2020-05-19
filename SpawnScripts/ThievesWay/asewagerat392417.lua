--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392417.lua
	Script Purpose	:	Waypoint Path for asewagerat392417.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:29:01 
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
	MovementLoopAddLocation(NPC, -181.26, 0.02, 113.33, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.53, 0.00, 110.26, 2, 0)
	MovementLoopAddLocation(NPC, -180.81, 0.07, 109.05, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.87, 0.00, 121.44, 2, 0)
	MovementLoopAddLocation(NPC, -182.25, 0.00, 123.29, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.11, 0.00, 122.19, 2, 0)
	MovementLoopAddLocation(NPC, -182.33, 0.00, 115.48, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.34, 0.02, 110.57, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.00, 0.00, 115.30, 2, 0)
	MovementLoopAddLocation(NPC, -181.45, 0.25, 117.03, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.22, 0.00, 120.19, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -184.34, 0.32, 117.16, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.43, 0.00, 111.58, 2, 0)
	MovementLoopAddLocation(NPC, -182.33, 0.00, 109.62, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.38, 0.01, 115.20, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.18, 0.41, 117.10, 2, math.random(10, 18))
end

