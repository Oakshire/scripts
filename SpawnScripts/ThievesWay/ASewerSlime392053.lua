--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392053.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392053.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:03:08 
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
	MovementLoopAddLocation(NPC, -140.95, 0.09, 218.94, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -147.47, 0.00, 217.69, 2, 0)
	MovementLoopAddLocation(NPC, -148.51, 0.24, 217.15, 2, 0)
	MovementLoopAddLocation(NPC, -137.28, 0.00, 216.34, 2, 0)
	MovementLoopAddLocation(NPC, -133.31, 0.00, 217.07, 2, 0)
	MovementLoopAddLocation(NPC, -133.32, 0.00, 217.09, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -139.87, 0.00, 217.83, 2, 0)
	MovementLoopAddLocation(NPC, -147.34, 0.04, 218.46, 2, 0)
	MovementLoopAddLocation(NPC, -148.79, 0.24, 218.07, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -147.24, 0.00, 217.59, 2, 0)
	MovementLoopAddLocation(NPC, -139.70, 0.00, 216.81, 2, 0)
	MovementLoopAddLocation(NPC, -138.45, 0.00, 217.22, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -144.11, 0.04, 218.39, 2, 0)
	MovementLoopAddLocation(NPC, -145.20, 0.27, 219.92, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.86, 0.09, 219.43, 2, 0)
	MovementLoopAddLocation(NPC, -139.27, 0.01, 218.12, 2, 0)
	MovementLoopAddLocation(NPC, -139.27, 0.02, 218.21, 2, 0)
	MovementLoopAddLocation(NPC, -143.57, 0.00, 217.74, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -144.69, 0.01, 218.09, 2, 0)
	MovementLoopAddLocation(NPC, -144.65, 0.01, 218.14, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -140.85, 0.08, 218.80, 2, 0)
	MovementLoopAddLocation(NPC, -133.58, 0.26, 219.86, 2, 0)
	MovementLoopAddLocation(NPC, -129.74, 0.48, 217.78, 2, 0)
	MovementLoopAddLocation(NPC, -126.95, 0.00, 217.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -138.03, 0.01, 216.02, 2, 0)
end
