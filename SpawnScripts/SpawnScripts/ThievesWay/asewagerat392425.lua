--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392425.lua
	Script Purpose	:	Waypoint Path for rat11001.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 06:22:23 
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
	MovementLoopAddLocation(NPC, -159.07, 1.58, 61.85, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -161.49, 1.22, 61.91, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -158.01, 1.49, 61.89, 2, 0)
	MovementLoopAddLocation(NPC, -155.59, 1.34, 60.93, 2, 0)
	MovementLoopAddLocation(NPC, -155.45, 1.34, 60.98, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -158.67, 1.58, 61.96, 2, 0)
	MovementLoopAddLocation(NPC, -160.46, 1.22, 61.90, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -161.81, 1.22, 61.73, 2, 0)
	MovementLoopAddLocation(NPC, -162.05, 1.22, 61.61, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -160.73, 1.22, 61.86, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -158.96, 1.58, 60.94, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -153.72, 1.34, 60.76, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -154.61, 1.34, 61.02, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -154.42, 1.34, 62.07, 2, 0)
	MovementLoopAddLocation(NPC, -154.11, 1.34, 62.22, 2, math.random(10, 18))
end

