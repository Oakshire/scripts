--[[ 
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392007.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392007.lua
	Script Author	:	Rylec
	Script Date	:	09-20-2019 02:43:51 
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
	MovementLoopAddLocation(NPC, -179.09, 1.22, 26.67, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.06, 1.22, 23.83, 2, 0)
	MovementLoopAddLocation(NPC, -180.47, 1.22, 23.03, 2, 0)
	MovementLoopAddLocation(NPC, -180.46, 1.22, 23.00, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.09, 1.22, 26.95, 2, 0)
	MovementLoopAddLocation(NPC, -179.47, 1.22, 34.15, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.04, 1.22, 31.80, 2, 0)
	MovementLoopAddLocation(NPC, -180.25, 1.22, 30.61, 2, 0)
	MovementLoopAddLocation(NPC, -181.30, 1.25, 29.79, 2, 0)
	MovementLoopAddLocation(NPC, -181.27, 1.25, 29.76, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.73, 1.22, 30.42, 2, 0)
	MovementLoopAddLocation(NPC, -176.73, 1.22, 28.69, 2, 0)
	MovementLoopAddLocation(NPC, -176.74, 1.22, 28.68, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.52, 1.22, 28.32, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.59, 1.22, 24.85, 2, 0)
	MovementLoopAddLocation(NPC, -177.50, 1.22, 24.80, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.37, 1.22, 34.29, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.98, 1.22, 31.89, 2, 0)
end

