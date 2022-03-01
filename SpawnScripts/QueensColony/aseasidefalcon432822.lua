--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432822.lua
 	Script Purpose	:	Waypoint Path for aseasidefalcon432822.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:06 
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
	MovementLoopAddLocation(NPC, 98.49, -0.05, 198.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.18, -0.2, 205.38, 2, 0)
	MovementLoopAddLocation(NPC, 63.87, -0.3, 219.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.45, -0.25, 215.96, 2, 0)
	MovementLoopAddLocation(NPC, 95.41, -0.19, 213.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.98, -0.2, 210.65, 2, 0)
	MovementLoopAddLocation(NPC, 90.95, -0.32, 191.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.48, -0.5, 192.33, 2, 0)
	MovementLoopAddLocation(NPC, 77.55, -0.8, 198.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.36, -0.4, 188.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.44, -0.35, 195.65, 2, 0)
	MovementLoopAddLocation(NPC, 78.29, -0.4, 197.52, 2, math.random(10, 24))
end


