--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392037.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392037.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:03:18 
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
	MovementLoopAddLocation(NPC, -149.00, 0.24, 217.02, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -144.85, 0.00, 216.33, 2, 0)
	MovementLoopAddLocation(NPC, -143.49, 0.15, 214.90, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -145.85, 0.00, 217.86, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -140.76, 0.00, 216.38, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -144.60, 0.00, 217.14, 2, 0)
	MovementLoopAddLocation(NPC, -146.70, 0.00, 217.93, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -144.14, 0.21, 214.60, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -146.88, 0.02, 215.92, 2, 0)
end


