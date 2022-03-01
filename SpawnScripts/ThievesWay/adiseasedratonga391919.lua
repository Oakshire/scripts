--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391919.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391919.lua
	Script Author	:	Rylec
	Script Date	:	09-19-2019 08:32:41 
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
	MovementLoopAddLocation(NPC, -161.59, 1.22, 60.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -157.32, 1.34, 61.01, 2, 0)
	MovementLoopAddLocation(NPC, -153.41, 1.34, 62.11, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.74, 1.34, 60.84, 2, 0)
	MovementLoopAddLocation(NPC, -152.57, 1.34, 60.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.62, 1.34, 61.95, 2, 0)
	MovementLoopAddLocation(NPC, -152.47, 1.34, 61.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -157.48, 1.34, 61.87, 2, 0)
	MovementLoopAddLocation(NPC, -157.59, 1.34, 61.94, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -158.82, 1.58, 62.12, 2, 0)
	MovementLoopAddLocation(NPC, -161.24, 1.22, 61.50, 2, 0)
	MovementLoopAddLocation(NPC, -162.77, 1.22, 60.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -160.49, 1.22, 60.90, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -162.14, 1.22, 61.71, 2, math.random(12, 22))
end
