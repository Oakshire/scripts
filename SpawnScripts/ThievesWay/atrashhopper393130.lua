--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393130.lua
	Script Purpose	:	Waypoint Path for atrashhopper393130.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:35:24 
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
	MovementLoopAddLocation(NPC, -181.33, 0.02, 109.45, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.99, 0.00, 111.13, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.24, 0.02, 113.34, 2, 0)
	MovementLoopAddLocation(NPC, -181.91, 0.00, 115.69, 2, 0)
	MovementLoopAddLocation(NPC, -181.43, 0.25, 117.17, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.48, 0.00, 109.51, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.66, 0.00, 114.52, 2, 0)
	MovementLoopAddLocation(NPC, -183.60, 0.25, 117.11, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.22, 0.00, 114.69, 2, 0)
	MovementLoopAddLocation(NPC, -182.05, 0.00, 111.38, 2, 0)
end
