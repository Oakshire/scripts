--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428289.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428289.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:30 
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
	MovementLoopAddLocation(NPC, 109.05, 1.42, -97.9, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 121.82, 1.48, -87.73, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 117.9, 1.59, -85.29, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 86.44, 1.51, -107.39, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 104.37, 1.44, -98.38, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 86.86, 1.81, -102.12, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 109.09, 1.42, -97.82, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 119.61, 1.58, -100.41, 1.5, 0)
	MovementLoopAddLocation(NPC, 127.5, 1.6, -96.96, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 123.88, 1.56, -93.99, 1.5, 0)
	MovementLoopAddLocation(NPC, 118.81, 1.41, -94.06, 1.5, 0)
end


