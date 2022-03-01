--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391990.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391990.lua
	Script Author	:	Rylec
	Script Date	:	09-15-2019 04:26:38 
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
	MovementLoopAddLocation(NPC, -178.41, 1.22, 25.00, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.94, 1.22, 30.20, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.92, 1.22, 31.53, 2, 0)
	MovementLoopAddLocation(NPC, -180.45, 1.22, 32.92, 2, 0)
	MovementLoopAddLocation(NPC, -182.07, 1.34, 31.53, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.05, 1.23, 30.94, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -178.81, 1.22, 25.54, 2, 0)
	MovementLoopAddLocation(NPC, -178.40, 1.22, 23.99, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -179.26, 1.22, 27.82, 2, 0)
	MovementLoopAddLocation(NPC, -179.90, 1.22, 31.48, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.09, 1.22, 33.76, 2, 0)
	MovementLoopAddLocation(NPC, -181.36, 1.26, 35.51, 2, 0)
	MovementLoopAddLocation(NPC, -180.92, 1.22, 33.62, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.47, 1.22, 22.80, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -180.12, 1.22, 25.13, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.75, 1.22, 27.69, 2, 0)
	MovementLoopAddLocation(NPC, -179.47, 1.22, 28.42, 2, 0)
	MovementLoopAddLocation(NPC, -180.54, 1.22, 34.81, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.10, 1.22, 33.31, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.38, 1.22, 31.91, 2, 0)
	MovementLoopAddLocation(NPC, -180.50, 1.22, 29.73, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.02, 1.22, 28.25, 2, 0)
	MovementLoopAddLocation(NPC, -177.66, 1.22, 26.69, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.37, 1.22, 35.73, 2, math.random(10, 22))
end

