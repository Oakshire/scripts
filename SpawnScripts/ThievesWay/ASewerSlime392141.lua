--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392141.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392141.lua
	Script Author	:	Rylec
	Script Date	:	09-23-2019 08:52:38 
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
	MovementLoopAddLocation(NPC, -86.66, 0.00, 216.43, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.76, 0.00, 217.10, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -94.97, 0.00, 217.51, 2, 0)
	MovementLoopAddLocation(NPC, -99.00, 0.00, 217.71, 2, 0)
	MovementLoopAddLocation(NPC, -100.69, 0.02, 218.24, 2, 0)
	MovementLoopAddLocation(NPC, -104.02, 0.00, 217.26, 2, 0)
	-- MovementLoopAddLocation(NPC, -100.40, 0.00, 216.85, 2, 0)
	MovementLoopAddLocation(NPC, -100.33, 0.00, 217.02, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -88.16, 0.00, 217.07, 2, 0)
	MovementLoopAddLocation(NPC, -88.18, 0.00, 217.33, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -89.63, 0.00, 216.16, 2, 0)
	MovementLoopAddLocation(NPC, -89.82, 0.00, 216.14, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -92.71, 0.00, 216.50, 2, 0)
	MovementLoopAddLocation(NPC, -93.91, 0.00, 217.57, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.04, 0.26, 219.89, 2, 0)
	MovementLoopAddLocation(NPC, -89.38, 0.25, 219.84, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -87.15, 0.00, 217.94, 2, 0)
	MovementLoopAddLocation(NPC, -82.51, 0.00, 216.51, 2, 0)
	MovementLoopAddLocation(NPC, -80.11, 0.00, 216.93, 2, 0)
	MovementLoopAddLocation(NPC, -80.16, 0.00, 217.01, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -85.87, 0.00, 217.46, 2, 0)
	MovementLoopAddLocation(NPC, -91.24, 0.00, 217.43, 2, 0)
	MovementLoopAddLocation(NPC, -95.32, 0.02, 218.20, 2, 0)
	MovementLoopAddLocation(NPC, -91.22, 0.03, 218.31, 2, 0)
	MovementLoopAddLocation(NPC, -85.45, 0.00, 217.69, 2, 0)
	MovementLoopAddLocation(NPC, -81.68, 0.00, 217.84, 2, 0)
	MovementLoopAddLocation(NPC, -80.05, 0.00, 217.14, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -84.75, 0.03, 215.86, 2, 0)
	MovementLoopAddLocation(NPC, -87.32, 0.33, 215.72, 2, 0)
	MovementLoopAddLocation(NPC, -90.07, 0.11, 214.64, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -92.69, 0.08, 215.32, 2, 0)
	-- MovementLoopAddLocation(NPC, -94.51, 0.00, 216.78, 2, 0)
	MovementLoopAddLocation(NPC, -94.33, 0.00, 216.85, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -87.47, 0.00, 217.81, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -85.60, 0.00, 217.54, 2, 0)
	MovementLoopAddLocation(NPC, -85.01, 0.00, 217.20, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -87.86, 0.00, 217.23, 2, 0)
	MovementLoopAddLocation(NPC, -89.66, 0.03, 218.27, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -91.75, 0.10, 219.02, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -95.51, 0.00, 217.46, 2, 0)
	MovementLoopAddLocation(NPC, -103.62, 0.00, 216.91, 2, 0)
	MovementLoopAddLocation(NPC, -101.46, 0.00, 216.55, 2, 0)
end
