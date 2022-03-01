--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392409.lua
	Script Purpose	:	Waypoint Path for asewagerat392409.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:27:39 
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
	MovementLoopAddLocation(NPC, -183.09, 0.00, 140.27, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.69, 0.00, 141.10, 2, 0)
	MovementLoopAddLocation(NPC, -180.97, 0.00, 142.09, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.77, 0.00, 143.18, 2, 0)
	MovementLoopAddLocation(NPC, -179.87, 0.12, 145.95, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.09, 0.00, 142.33, 2, 0)
	MovementLoopAddLocation(NPC, -183.54, 0.02, 135.46, 2, 0)
	MovementLoopAddLocation(NPC, -183.97, 0.06, 134.56, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.82, 0.00, 140.11, 2, 0)
	MovementLoopAddLocation(NPC, -177.83, 0.00, 141.67, 2, 0)
	MovementLoopAddLocation(NPC, -177.20, 0.08, 142.77, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.05, 0.00, 141.98, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.81, 0.00, 139.94, 2, 0)
	MovementLoopAddLocation(NPC, -183.57, 0.02, 137.89, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.07, 0.00, 134.81, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.26, 0.00, 138.20, 2, 0)
	MovementLoopAddLocation(NPC, -181.29, 0.00, 138.21, 2, math.random(10, 18))
end

