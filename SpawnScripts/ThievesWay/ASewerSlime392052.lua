--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392052.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392052.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:03:02 
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
	MovementLoopAddLocation(NPC, -131.03, 0.27, 217.17, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.80, 0.00, 216.22, 2, 0)
	MovementLoopAddLocation(NPC, -140.16, 0.00, 217.83, 2, 0)
	MovementLoopAddLocation(NPC, -139.32, 0.00, 217.98, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -142.02, 0.03, 215.85, 2, 0)
	MovementLoopAddLocation(NPC, -142.01, 0.04, 215.79, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -137.68, 0.00, 216.69, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -142.13, 0.00, 216.84, 2, 0)
	MovementLoopAddLocation(NPC, -142.12, 0.00, 216.82, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -139.52, 0.00, 216.49, 2, 0)
	MovementLoopAddLocation(NPC, -134.60, 0.00, 216.73, 2, 0)
end
