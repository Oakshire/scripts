--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391886.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391886.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:38 
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
	MovementLoopAddLocation(NPC, -182.17, 0.00, 141.20, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.97, 0.00, 139.98, 2, 0)
	MovementLoopAddLocation(NPC, -178.20, 0.00, 136.27, 2, 0)
	MovementLoopAddLocation(NPC, -178.09, 0.00, 135.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.18, 0.00, 141.94, 2, 0)
	MovementLoopAddLocation(NPC, -178.62, 0.00, 142.81, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.20, 0.00, 140.38, 2, 0)
	MovementLoopAddLocation(NPC, -183.65, 0.03, 134.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -177.45, 0.05, 135.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.02, 0.00, 139.88, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.64, 0.00, 143.81, 2, 0)
	MovementLoopAddLocation(NPC, -181.40, 0.00, 145.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.80, 0.00, 141.30, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.51, 0.00, 136.46, 2, 0)
	MovementLoopAddLocation(NPC, -180.98, 0.00, 132.18, 2, math.random(12, 22))
end

