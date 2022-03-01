--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428034.lua
	Script Purpose	:	Waypoint Path for agrovedeer428034.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:52 
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
	MovementLoopAddLocation(NPC, 81.23, -4.35, 226.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.95, -3.8, 218.32, 2, 0)
	MovementLoopAddLocation(NPC, 61.1, -3.9, 216.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.9, -4.48, 226.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 67.62, -4.49, 226.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 90.31, -4.35, 213.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.93, -4.55, 219.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 75.09, -3.8, 211.76, 2, math.random(10, 24))
end


