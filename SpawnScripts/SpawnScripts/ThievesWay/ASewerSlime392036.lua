--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392036.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392036.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:45:19 
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
	MovementLoopAddLocation(NPC, -161.03, 0.00, 216.86, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -155.69, 0.00, 217.34, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -156.84, 0.02, 215.92, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -151.94, 0.00, 217.68, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -156.30, 0.00, 217.11, 2, 0)
	MovementLoopAddLocation(NPC, -151.39, 0.09, 218.93, 2, 0)
	MovementLoopAddLocation(NPC, -151.40, 0.10, 219.05, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -152.06, 0.01, 218.08, 2, 0)
	MovementLoopAddLocation(NPC, -156.54, 0.01, 218.12, 2, 0)
end


