--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391884.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391884.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 08:04:59 
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
	MovementLoopAddLocation(NPC, -176.50, 1.34, 22.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.30, 1.22, 23.50, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.64, 1.28, 27.68, 2, 0)
	MovementLoopAddLocation(NPC, -181.61, 1.28, 27.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -174.95, 1.22, 26.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -176.34, 1.22, 28.32, 2, 0)
	MovementLoopAddLocation(NPC, -180.49, 1.22, 32.44, 2, 0)
	MovementLoopAddLocation(NPC, -180.43, 1.22, 32.62, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -177.46, 1.22, 32.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.38, 1.22, 34.49, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.51, 1.22, 25.60, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.30, 1.22, 28.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -176.55, 1.22, 26.57, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.60, 1.22, 36.18, 2, math.random(12, 22))
end

