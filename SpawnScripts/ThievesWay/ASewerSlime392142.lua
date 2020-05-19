--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392142.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392142.lua
	Script Author	:	Rylec
	Script Date	:	09-23-2019 08:52:46 
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
	MovementLoopAddLocation(NPC, -79.57, 0.02, 217.12, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.14, 0.00, 216.45, 2, 0)
	MovementLoopAddLocation(NPC, -97.85, 0.41, 215.69, 2, 0)
	MovementLoopAddLocation(NPC, -102.16, 0.00, 216.77, 2, 0)
	MovementLoopAddLocation(NPC, -99.00, 0.00, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -99.01, 0.00, 217.06, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -95.53, 0.00, 216.18, 2, 0)
	MovementLoopAddLocation(NPC, -91.00, 0.25, 214.39, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -87.78, 0.01, 216.09, 2, 0)
	MovementLoopAddLocation(NPC, -82.82, 0.10, 219.05, 2, 0)
	MovementLoopAddLocation(NPC, -82.89, 0.12, 219.11, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -83.74, 0.00, 217.89, 2, 0)
	MovementLoopAddLocation(NPC, -87.86, 0.00, 217.50, 2, 0)
	MovementLoopAddLocation(NPC, -90.49, 0.00, 216.21, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -92.47, 0.00, 216.56, 2, 0)
	MovementLoopAddLocation(NPC, -92.56, 0.00, 216.34, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -86.16, 0.00, 217.61, 2, 0)
	MovementLoopAddLocation(NPC, -81.93, 0.06, 219.16, 2, 0)
	MovementLoopAddLocation(NPC, -80.74, 0.19, 219.51, 2, 0)
end

