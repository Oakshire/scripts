--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392019.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392019.lua
	Script Author	:	Rylec
	Script Date	:	09-18-2019 09:10:33 
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
	MovementLoopAddLocation(NPC, -151.21, 1.34, 60.87, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -156.08, 1.34, 61.50, 2, 0)
	MovementLoopAddLocation(NPC, -158.26, 1.57, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, -162.73, 1.22, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, -162.63, 1.22, 61.91, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -158.93, 1.58, 62.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.57, 1.34, 61.94, 2, 0)
	MovementLoopAddLocation(NPC, -151.51, 1.34, 61.99, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -155.26, 1.34, 61.98, 2, 0)
	MovementLoopAddLocation(NPC, -155.03, 1.34, 61.99, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.29, 1.34, 61.37, 2, 0)
	MovementLoopAddLocation(NPC, -151.89, 1.34, 61.27, 2, 0)
end
