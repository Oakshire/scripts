--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391871.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391871.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:40:45 
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
	MovementLoopAddLocation(NPC, -181.37, 0.01, 113.79, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.83, 0.00, 114.09, 2, 0)
	MovementLoopAddLocation(NPC, -182.35, 0.24, 117.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.91, 0.05, 126.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.32, 0.00, 119.51, 2, 0)
	MovementLoopAddLocation(NPC, -182.21, 0.24, 116.95, 2, math.random(12, 22))
end

