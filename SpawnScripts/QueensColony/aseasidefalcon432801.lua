--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432801.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432801.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:38 
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
	MovementLoopAddLocation(NPC, 105.65, -0.67, 181.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.51, -0.39, 187.31, 2, 0)
	MovementLoopAddLocation(NPC, 96.86, -0.39, 209.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 110.72, -0.45, 183.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.24, -0.51, 208.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.76, 0.42, 197.31, 2, 0)
	MovementLoopAddLocation(NPC, 92.36, 0.65, 187.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.9, -1.19, 196.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.16, -0.71, 170.96, 2, math.random(10, 24))
end


