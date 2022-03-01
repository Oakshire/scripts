--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392138.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392138.lua
	Script Author	:	Rylec
	Script Date	:	09-23-2019 08:52:32 
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
	MovementLoopAddLocation(NPC, -99.01, 0.00, 216.82, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -102.43, 0.00, 217.09, 2, 0)
	MovementLoopAddLocation(NPC, -102.46, 0.00, 217.22, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.41, 0.03, 215.85, 2, 0)
	MovementLoopAddLocation(NPC, -80.22, 0.00, 216.15, 2, 0)
	MovementLoopAddLocation(NPC, -80.25, 0.02, 215.96, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -86.62, 0.00, 216.53, 2, 0)
	MovementLoopAddLocation(NPC, -90.90, 0.00, 217.57, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.62, 0.08, 218.85, 2, 0)
	MovementLoopAddLocation(NPC, -91.72, 0.11, 219.08, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -84.15, 0.00, 217.41, 2, 0)
	MovementLoopAddLocation(NPC, -81.09, 0.00, 217.09, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -78.79, 0.03, 217.00, 2, 0)
	MovementLoopAddLocation(NPC, -78.71, 0.04, 216.77, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -82.57, 0.00, 216.31, 2, 0)
	MovementLoopAddLocation(NPC, -88.23, 0.03, 215.88, 2, 0)
	MovementLoopAddLocation(NPC, -90.30, 0.06, 215.15, 2, 0)
	MovementLoopAddLocation(NPC, -93.65, 0.02, 215.93, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.60, 0.01, 216.11, 2, 0)
	MovementLoopAddLocation(NPC, -85.40, 0.00, 216.43, 2, 0)
	MovementLoopAddLocation(NPC, -84.31, 0.02, 215.96, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -99.23, 0.00, 216.23, 2, 0)
	MovementLoopAddLocation(NPC, -101.59, 0.00, 216.63, 2, 0)
	MovementLoopAddLocation(NPC, -92.09, 0.00, 217.90, 2, 0)
	MovementLoopAddLocation(NPC, -90.93, 0.07, 218.71, 2, 0)
	MovementLoopAddLocation(NPC, -90.81, 0.08, 218.86, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -92.57, 0.00, 218.02, 2, 0)
	MovementLoopAddLocation(NPC, -98.06, 0.00, 217.64, 2, 0)
end
