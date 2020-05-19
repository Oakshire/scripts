--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586517.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586517.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 07:08:58 
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
	MovementLoopAddLocation(NPC, -154.77, 1.34, 60.94, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -151.12, 1.34, 60.75, 2, 0)
	MovementLoopAddLocation(NPC, -151.29, 1.34, 60.83, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -154.14, 1.34, 61.90, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -156.26, 1.34, 61.44, 2, 0)
	MovementLoopAddLocation(NPC, -158.89, 1.58, 60.81, 2, 0)
	MovementLoopAddLocation(NPC, -161.13, 1.22, 60.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -153.57, 1.34, 60.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -162.34, 1.22, 62.86, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -160.56, 1.22, 60.94, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -151.32, 1.34, 62.87, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.26, 1.34, 61.07, 2, 0)
	MovementLoopAddLocation(NPC, -158.80, 1.58, 60.85, 2, math.random(12, 22))
end

