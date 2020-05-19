--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428330.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428330.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:12 
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
	MovementLoopAddLocation(NPC, 176.88, 1.36, -46.47, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 151.42, 1.25, -55.02, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 157.14, 1.3, -49.17, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 148.29, 1.39, -56.18, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 176.4, 1.16, -39.19, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 158.71, 1.38, -56.59, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 156.21, 1.11, -67.06, 1.5, 0)
	MovementLoopAddLocation(NPC, 153.92, 0.54, -73.75, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.56, 0.64, -71.4, 1.5, 0)
	MovementLoopAddLocation(NPC, 157.61, 1.43, -60.13, 1.5, 0)
	MovementLoopAddLocation(NPC, 174.43, 1.17, -42.59, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 170.53, 1.18, -44.08, 1.5, 0)
	MovementLoopAddLocation(NPC, 163.95, 1.21, -45.13, 1.5, math.random(14, 30))
end

