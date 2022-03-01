--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392151.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392151.lua
	Script Author	:	Rylec
	Script Date	:	09-23-2019 08:52:43 
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
	MovementLoopAddLocation(NPC, -92.46, 0.00, 217.81, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -89.34, 0.00, 217.53, 2, 0)
	MovementLoopAddLocation(NPC, -82.04, 0.02, 218.42, 2, 0)
	MovementLoopAddLocation(NPC, -81.09, 0.11, 219.08, 2, 0)
	MovementLoopAddLocation(NPC, -81.07, 0.09, 218.99, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -78.51, 0.04, 216.89, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -84.67, 0.00, 216.34, 2, 0)
	MovementLoopAddLocation(NPC, -89.49, 0.03, 215.91, 2, 0)
	MovementLoopAddLocation(NPC, -91.28, 0.00, 216.40, 2, 0)
	MovementLoopAddLocation(NPC, -101.38, 0.00, 217.44, 2, 0)
	MovementLoopAddLocation(NPC, -91.46, 0.00, 216.53, 2, 0)
	MovementLoopAddLocation(NPC, -85.93, 0.01, 216.03, 2, 0)
	MovementLoopAddLocation(NPC, -84.78, 0.00, 217.23, 2, 0)
	MovementLoopAddLocation(NPC, -84.82, 0.00, 217.40, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -82.53, 0.04, 215.79, 2, 0)
	MovementLoopAddLocation(NPC, -81.84, 0.05, 215.68, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -86.02, 0.01, 216.09, 2, 0)
	MovementLoopAddLocation(NPC, -88.45, 0.05, 215.63, 2, 0)
	MovementLoopAddLocation(NPC, -92.35, 0.27, 214.27, 2, 0)
	MovementLoopAddLocation(NPC, -94.79, 0.15, 214.91, 2, 0)
	MovementLoopAddLocation(NPC, -99.14, 0.00, 217.09, 2, 0)
	MovementLoopAddLocation(NPC, -97.98, 0.00, 217.55, 2, 0)
	MovementLoopAddLocation(NPC, -97.13, 0.00, 216.98, 2, 0)
	MovementLoopAddLocation(NPC, -97.23, 0.00, 216.76, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -97.97, 0.00, 217.33, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -94.78, 0.04, 215.71, 2, math.random(10, 22))
end