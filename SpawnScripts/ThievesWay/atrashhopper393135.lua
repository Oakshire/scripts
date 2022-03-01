--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393135.lua
	Script Purpose	:	Waypoint Path for atrashhopper393135.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 05:52:12 
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
	MovementLoopAddLocation(NPC, -175.51, 1.23, 32.54, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.46, 1.22, 33.34, 2, 0)
	MovementLoopAddLocation(NPC, -179.46, 1.22, 33.38, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.53, 1.24, 36.56, 2, 0)
	MovementLoopAddLocation(NPC, -178.61, 1.24, 36.67, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.45, 1.22, 26.39, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.85, 1.22, 27.95, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -175.44, 1.22, 31.52, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.40, 1.26, 28.46, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -175.29, 1.22, 29.32, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.57, 1.22, 25.36, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -175.38, 1.22, 26.64, 2, 0)
	MovementLoopAddLocation(NPC, -175.44, 1.22, 26.80, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -175.46, 1.22, 31.12, 2, 0)
end
