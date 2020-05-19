--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432894.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432894.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:17 
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
	MovementLoopAddLocation(NPC, 81.75, -1.38, 191.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.46, -0.8, 203.84, 2, 0)
	MovementLoopAddLocation(NPC, 105.5, -0.68, 204.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.02, -0.8, 197.49, 2, 0)
	MovementLoopAddLocation(NPC, 89.47, -1.21, 192.21, 2, 0)
	MovementLoopAddLocation(NPC, 85.95, -1.36, 193.29, 2, 0)
	MovementLoopAddLocation(NPC, 75.99, -1.99, 212.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.61, -1.85, 211.05, 2, 0)
	MovementLoopAddLocation(NPC, 96.93, -1.67, 196.77, 2, 0)
	MovementLoopAddLocation(NPC, 99.5, -1.62, 195.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.99, -1.75, 187.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.97, -0.91, 181.92, 2, 0)
	MovementLoopAddLocation(NPC, 103.68, -0.85, 181.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.59, -1.1, 214.63, 2, 0)
	MovementLoopAddLocation(NPC, 83.41, -1.24, 220.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.13, -1.3, 215.05, 2, 0)
end


