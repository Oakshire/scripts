--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428354.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428354.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:22 
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
	MovementLoopAddLocation(NPC, 126.13, 1.53, -86.89, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 102.81, 1.44, -96.71, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 115.78, 1.59, -85.96, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 98.23, 1.6, -104.44, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 78.65, 1.53, -110.11, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 93.8, 2.06, -96.67, 1.5, 0)
	MovementLoopAddLocation(NPC, 110.12, 1.48, -92.11, 1.5, 0)
	MovementLoopAddLocation(NPC, 123.47, 1.57, -81.67, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 121.71, 1.57, -85.66, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 109.02, 1.43, -92.93, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 82.11, 1.52, -107.1, 1.5, math.random(14, 30))
end


