--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392021.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392021.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 05:03:18 
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
	MovementLoopAddLocation(NPC, -151.46, 1.34, 61.76, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -152.37, 1.34, 61.15, 2, 0)
	MovementLoopAddLocation(NPC, -152.51, 1.34, 61.20, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -160.49, 1.22, 60.99, 2, 0)
	MovementLoopAddLocation(NPC, -160.08, 1.31, 61.01, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -158.82, 1.58, 60.92, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -157.78, 1.35, 61.49, 2, 0)
	MovementLoopAddLocation(NPC, -156.18, 1.34, 62.07, 2, 0)
	MovementLoopAddLocation(NPC, -156.29, 1.34, 62.10, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -160.83, 1.22, 61.93, 2, 0)
	MovementLoopAddLocation(NPC, -162.30, 1.22, 61.73, 2, 0)
	MovementLoopAddLocation(NPC, -162.11, 1.22, 61.77, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -158.84, 1.58, 62.22, 2, 0)
	MovementLoopAddLocation(NPC, -158.61, 1.58, 62.12, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -156.76, 1.34, 60.83, 2, 0)
	MovementLoopAddLocation(NPC, -156.61, 1.34, 60.83, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -155.74, 1.34, 60.90, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -155.75, 1.34, 61.84, 2, 0)
	MovementLoopAddLocation(NPC, -155.65, 1.34, 61.81, 2, math.random(10, 22))
end

