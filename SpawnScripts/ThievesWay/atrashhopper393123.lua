--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393123.lua
	Script Purpose	:	Waypoint Path for atrashhopper393123.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:35:40 
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
	MovementLoopAddLocation(NPC, -182.29, 0.00, 118.81, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.38, 0.00, 112.50, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.03, 0.00, 112.02, 2, 0)
	MovementLoopAddLocation(NPC, -181.39, 0.01, 110.31, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.40, 0.01, 112.56, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.38, 0.01, 109.48, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.46, 0.01, 120.11, 2, 0)
	MovementLoopAddLocation(NPC, -182.40, 0.00, 124.40, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.29, 0.00, 121.56, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.31, 0.00, 121.63, 2, 0)
	MovementLoopAddLocation(NPC, -182.28, 0.00, 122.38, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.46, 0.00, 123.64, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.37, 0.00, 126.54, 2, 0)
	MovementLoopAddLocation(NPC, -184.01, 0.06, 127.00, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.27, 0.00, 125.96, 2, 0)
end

