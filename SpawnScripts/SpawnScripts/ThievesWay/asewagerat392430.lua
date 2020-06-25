--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392430.lua
	Script Purpose	:	Waypoint Path for asewagerat392430.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 09:41:13 
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
	MovementLoopAddLocation(NPC, -154.60, 1.34, 61.90, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -158.96, 1.58, 61.88, 2, 0)
	MovementLoopAddLocation(NPC, -158.62, 1.58, 61.89, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -161.04, 1.25, 62.57, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -152.58, 1.34, 61.97, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -156.85, 1.34, 60.99, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -154.84, 1.34, 60.92, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -150.94, 1.34, 59.80, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -160.47, 1.22, 60.68, 2, 0)
	MovementLoopAddLocation(NPC, -161.79, 1.22, 60.22, 2, math.random(10, 18))
end


