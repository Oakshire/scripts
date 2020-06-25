--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392411.lua
	Script Purpose	:	Waypoint Path for asewagerat392411.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 05:10:29 
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
	MovementLoopAddLocation(NPC, -180.49, 1.22, 25.47, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.50, 1.22, 23.22, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -177.49, 1.31, 35.78, 2, 0)
	MovementLoopAddLocation(NPC, -177.48, 1.31, 35.72, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.31, 1.22, 28.71, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.16, 1.24, 35.62, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.29, 1.25, 22.76, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.51, 1.22, 26.41, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.53, 1.22, 27.42, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.38, 1.22, 26.42, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.46, 1.22, 29.50, 2, math.random(10, 18))
end

