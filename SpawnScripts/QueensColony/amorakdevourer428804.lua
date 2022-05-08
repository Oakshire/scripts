--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428804.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428804.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "hp", 75)
        SpawnSet(NPC, "power", 45)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 257.04, -4.25, 35.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 266.14, -4.05, 41.85, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 265.17, -4.52, 49.21, 2, 0)
	MovementLoopAddLocation(NPC, 258.46, -6.31, 69.7, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 257, -3.97, 52.15, 2, 0)
	MovementLoopAddLocation(NPC, 255.97, -4.07, 47.33, 2, 0)
	MovementLoopAddLocation(NPC, 256.38, -4.12, 39.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 256.09, -4.05, 47.68, 2, 0)
	MovementLoopAddLocation(NPC, 259.99, -4.45, 56.06, 2, 0)
	MovementLoopAddLocation(NPC, 262.48, -4.56, 59.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.03, -4.56, 56.12, 2, 0)
	MovementLoopAddLocation(NPC, 265.4, -4.57, 51.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 267.5, -4.32, 47.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 270.34, -4.36, 50.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.25, -5.46, 64.74, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 258, -3.96, 48.02, 2, 0)
	MovementLoopAddLocation(NPC, 256.1, -4.01, 40.88, 2, 0)
end