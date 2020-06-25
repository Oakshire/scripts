--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392413.lua
	Script Purpose	:	Waypoint Path for asewagerat392413.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:53 
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
	MovementLoopAddLocation(NPC, -183.55, 0.02, 122.48, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.66, 0.00, 119.28, 2, 0)
	MovementLoopAddLocation(NPC, -181.64, 0.00, 113.01, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.34, 0.00, 109.63, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.85, 0.00, 112.30, 2, 0)
	MovementLoopAddLocation(NPC, -182.39, 0.24, 117.01, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.48, 0.00, 110.02, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.10, 0.28, 116.92, 2, 0)
	MovementLoopAddLocation(NPC, -181.84, 0.00, 122.54, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.51, 0.00, 121.13, 2, 0)
	MovementLoopAddLocation(NPC, -181.38, 0.01, 111.40, 2, 0)
	MovementLoopAddLocation(NPC, -181.38, 0.01, 111.38, 2, math.random(10, 18))
end


