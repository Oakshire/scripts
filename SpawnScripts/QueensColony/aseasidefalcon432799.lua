--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432799.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432799.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:03 
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
	MovementLoopAddLocation(NPC, 99.68, -0.72, 211.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.44, -0.49, 215.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 74.68, -1.31, 202.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.57, -0.8, 216.72, 2, 0)
	MovementLoopAddLocation(NPC, 89.37, -0.38, 219.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 91.52, -0.5, 213.68, 2, 0)
	MovementLoopAddLocation(NPC, 92.21, -0.7, 205.83, 2, 0)
	MovementLoopAddLocation(NPC, 98.46, -0.8, 191.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102, -0.25, 165.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.44, -0.6, 180.76, 2, 0)
	MovementLoopAddLocation(NPC, 96.39, -1.4, 187.66, 2, 0)
	MovementLoopAddLocation(NPC, 96.19, -1.7, 189.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.84, -1.3, 197.02, 2, 0)
end


