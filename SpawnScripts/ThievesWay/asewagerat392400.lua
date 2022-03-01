--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392400.lua
	Script Purpose	:	Waypoint Path for asewagerat392400.lua
	Script Author	:	Rylec
	Script Date	:	09-15-2019 03:41:39 
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
	MovementLoopAddLocation(NPC, -180.32, 1.22, 32.62, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.94, 1.98, 32.26, 2, math.random(10, 18))
	-- MovementLoopAddLocation(NPC, -179.36, 1.22, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, -179.36, 1.22, 30.56, 2, 0)
	MovementLoopAddLocation(NPC, -179.32, 1.22, 30.52, 2, math.random(10, 18))
	-- MovementLoopAddLocation(NPC, -177.28, 1.22, 23.57, 2, 0)
	MovementLoopAddLocation(NPC, -177.34, 1.22, 23.59, 2, math.random(10, 18))
	-- MovementLoopAddLocation(NPC, -178.65, 1.22, 23.50, 2, 0)
	MovementLoopAddLocation(NPC, -178.60, 1.22, 23.51, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.90, 1.28, 23.85, 2, math.random(10, 18))
	-- MovementLoopAddLocation(NPC, -176.45, 1.22, 24.38, 2, 0)
	MovementLoopAddLocation(NPC, -176.50, 1.22, 24.41, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.10, 1.22, 27.90, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.27, 1.25, 28.42, 2, 0)
	MovementLoopAddLocation(NPC, -181.24, 1.25, 28.48, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.03, 1.23, 30.76, 2, math.random(10, 18))
end
