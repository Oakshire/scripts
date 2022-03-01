--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392139.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392139.lua
	Script Author	:	Rylec
	Script Date	:	09-23-2019 08:52:35 
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
	MovementLoopAddLocation(NPC, -102.63, 0.14, 214.94, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -100.07, 0.04, 215.74, 2, 0)
	MovementLoopAddLocation(NPC, -96.90, 0.00, 216.23, 2, 0)
	-- MovementLoopAddLocation(NPC, -92.89, 0.01, 218.08, 2, 0)
	MovementLoopAddLocation(NPC, -92.94, 0.03, 218.29, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -97.41, 0.00, 217.54, 2, 0)
	MovementLoopAddLocation(NPC, -98.38, 0.00, 217.21, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -96.01, 0.00, 216.58, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -99.69, 0.00, 217.47, 2, 0)
	MovementLoopAddLocation(NPC, -95.82, 0.00, 217.86, 2, 0)
	MovementLoopAddLocation(NPC, -91.48, 0.00, 217.80, 2, 0)
	-- MovementLoopAddLocation(NPC, -90.07, 0.00, 216.66, 2, 0)
	MovementLoopAddLocation(NPC, -89.75, 0.00, 216.63, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -92.72, 0.00, 216.79, 2, 0)
	MovementLoopAddLocation(NPC, -95.25, 0.04, 215.79, 2, 0)
	MovementLoopAddLocation(NPC, -101.46, 0.00, 216.80, 2, 0)
	MovementLoopAddLocation(NPC, -94.63, 0.00, 217.55, 2, 0)
	MovementLoopAddLocation(NPC, -88.41, 0.00, 217.99, 2, 0)
	MovementLoopAddLocation(NPC, -84.00, 0.00, 217.44, 2, 0)
	MovementLoopAddLocation(NPC, -82.87, 0.00, 217.57, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -86.53, 0.00, 217.30, 2, 0)
	MovementLoopAddLocation(NPC, -90.93, 0.00, 216.51, 2, 0)
	MovementLoopAddLocation(NPC, -97.56, 0.00, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -97.54, 0.00, 216.93, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -95.65, 0.00, 216.16, 2, 0)
	MovementLoopAddLocation(NPC, -98.51, 0.02, 215.93, 2, 0)
	MovementLoopAddLocation(NPC, -102.14, 0.01, 216.13, 2, 0)
	MovementLoopAddLocation(NPC, -103.52, 0.00, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -101.16, 0.00, 217.30, 2, math.random(10, 22))
end
