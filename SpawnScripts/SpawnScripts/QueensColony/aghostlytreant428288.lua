--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428288.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428288.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:27 
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
	MovementLoopAddLocation(NPC, 92.46, 1.85, -99.14, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 93.15, 2.1, -96.84, 1.5, 0)
	MovementLoopAddLocation(NPC, 95.07, 2.03, -95.61, 1.5, 0)
	MovementLoopAddLocation(NPC, 104.23, 1.57, -94.19, 1.5, 0)
	MovementLoopAddLocation(NPC, 127.96, 1.55, -82.74, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 97.94, 1.66, -96.81, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 124.93, 1.36, -90.99, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 130.96, 1.41, -84.29, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 123.58, 1.56, -76.57, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 120.23, 1.58, -79.45, 1.5, 0)
	MovementLoopAddLocation(NPC, 121.95, 1.57, -84.8, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 131.32, 1.34, -90.82, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 134.04, 1.33, -89.14, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 112.17, 1.41, -93.81, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 113.92, 1.4, -91.41, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 105.23, 1.63, -92.48, 1.5, 0)
	MovementLoopAddLocation(NPC, 95.81, 1.51, -99.42, 1.5, 0)
end

