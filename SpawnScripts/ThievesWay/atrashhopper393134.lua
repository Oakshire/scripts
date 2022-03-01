--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393134.lua
	Script Purpose	:	Waypoint Path for atrashhopper393134.lua
	Script Author	:	Rylec
	Script Date	:	09-15-2019 06:26:32 
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
	MovementLoopAddLocation(NPC, -176.34, 1.22, 26.36, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.68, 1.22, 31.87, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.47, 1.22, 32.52, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.72, 1.22, 31.05, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.47, 1.22, 30.11, 2, 0)
	MovementLoopAddLocation(NPC, -180.27, 1.22, 28.60, 2, 0)
	MovementLoopAddLocation(NPC, -179.52, 1.22, 27.58, 2, 0)
	MovementLoopAddLocation(NPC, -176.57, 1.22, 24.29, 2, 0)
	-- MovementLoopAddLocation(NPC, -176.24, 1.36, 22.75, 2, 0)
	MovementLoopAddLocation(NPC, -176.44, 1.36, 22.55, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.53, 1.23, 27.36, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.57, 1.22, 23.60, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.56, 1.22, 23.67, 2, 0)
	MovementLoopAddLocation(NPC, -178.99, 1.22, 36.75, 2, 0)
	MovementLoopAddLocation(NPC, -179.16, 1.65, 38.60, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -176.30, 1.22, 30.19, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.44, 1.31, 35.65, 2, 0)
	MovementLoopAddLocation(NPC, -177.58, 1.29, 35.61, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.34, 1.22, 34.18, 2, math.random(8, 18))
	-- MovementLoopAddLocation(NPC, -177.11, 1.22, 27.72, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -176.31, 1.22, 25.41, 2, 0)
	MovementLoopAddLocation(NPC, -175.71, 1.30, 23.78, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -176.23, 1.47, 21.95, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.68, 1.22, 24.80, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.71, 1.22, 25.61, 2, 0)
	MovementLoopAddLocation(NPC, -181.33, 1.25, 25.67, 2, 0)
	MovementLoopAddLocation(NPC, -180.13, 1.22, 27.92, 2, math.random(8, 18))
end