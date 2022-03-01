--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428085.lua
	Script Purpose	:	Waypoint Path for agrovedeer428085.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:25 
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
	MovementLoopAddLocation(NPC, 62.03, -3.8, 219.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.05, -4.34, 227.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 61.47, -4.33, 221.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 73.79, -3.8, 211.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 75.8, -3.8, 211.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 53.52, -4.44, 223.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 66.63, -3.8, 217.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.09, -4.47, 219.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 75.21, -3.8, 214.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.62, -3.8, 216.28, 2, 0)
	MovementLoopAddLocation(NPC, 61.8, -3.82, 216.12, 2, 0)
	MovementLoopAddLocation(NPC, 59.52, -4.08, 216.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 60.43, -3.98, 216.18, 2, 0)
	MovementLoopAddLocation(NPC, 79.03, -4.33, 218.76, 2, math.random(10, 24))
end


