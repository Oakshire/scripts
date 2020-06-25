--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392145.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392145.lua
	Script Author	:	Rylec
	Script Date	:	09-23-2019 08:52:40 
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
	MovementLoopAddLocation(NPC, -82.19, 0.09, 215.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -85.27, 0.00, 216.30, 2, 0)
	MovementLoopAddLocation(NPC, -88.69, 0.00, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -88.65, 0.00, 216.94, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -86.21, 0.00, 217.50, 2, 0)
	MovementLoopAddLocation(NPC, -90.41, 0.00, 217.99, 2, 0)
	MovementLoopAddLocation(NPC, -102.21, 0.00, 216.75, 2, 0)
	MovementLoopAddLocation(NPC, -96.94, 0.00, 216.34, 2, 0)
	MovementLoopAddLocation(NPC, -95.29, 0.03, 215.89, 2, 0)
	-- MovementLoopAddLocation(NPC, -79.37, 0.02, 217.68, 2, 0)
	MovementLoopAddLocation(NPC, -79.35, 0.02, 217.86, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -84.79, 0.00, 218.04, 2, 0)
	MovementLoopAddLocation(NPC, -87.24, 0.00, 217.32, 2, 0)
	MovementLoopAddLocation(NPC, -96.79, 0.00, 216.88, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -100.30, 0.00, 217.79, 2, 0)
	MovementLoopAddLocation(NPC, -101.45, 0.14, 219.22, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -98.47, 0.00, 217.71, 2, 0)
	MovementLoopAddLocation(NPC, -93.19, 0.01, 218.08, 2, 0)
	MovementLoopAddLocation(NPC, -89.13, 0.07, 218.80, 2, 0)
	MovementLoopAddLocation(NPC, -84.57, 0.00, 217.23, 2, 0)
	MovementLoopAddLocation(NPC, -83.10, 0.00, 216.86, 2, 0)
	MovementLoopAddLocation(NPC, -83.09, 0.00, 217.05, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -77.92, 0.02, 216.14, 2, 0)
	-- MovementLoopAddLocation(NPC, -77.92, 0.02, 215.95, 2, math.random(10, 22))
end