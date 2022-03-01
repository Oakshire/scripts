--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392410.lua
	Script Purpose	:	Waypoint Path for asewagerat392410.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:27:51 
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
	MovementLoopAddLocation(NPC, -181.06, 0.00, 138.19, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.16, 0.00, 141.09, 2, 0)
	MovementLoopAddLocation(NPC, -182.15, 0.00, 141.11, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.41, 0.00, 140.20, 2, 0)
	MovementLoopAddLocation(NPC, -176.41, 0.07, 139.39, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.16, 0.00, 139.02, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.89, 0.05, 136.35, 2, 0)
	MovementLoopAddLocation(NPC, -182.88, 0.00, 134.16, 2, 0)
	MovementLoopAddLocation(NPC, -180.61, 0.01, 132.33, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.87, 0.00, 136.87, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.63, 0.00, 136.63, 2, 0)
	MovementLoopAddLocation(NPC, -178.24, 0.00, 136.13, 2, 0)
	MovementLoopAddLocation(NPC, -176.38, 0.13, 135.98, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.89, 0.00, 135.06, 2, 0)
	MovementLoopAddLocation(NPC, -181.88, 0.00, 135.08, 2, math.random(10, 18))
end


