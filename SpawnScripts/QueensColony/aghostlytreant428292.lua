--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428292.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428292.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:35 
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
	MovementLoopAddLocation(NPC, 115.16, 1.43, -95.98, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 108.73, 1.49, -98.99, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 100.56, 1.45, -102.03, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 92.79, 1.57, -101.01, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 126.16, 1.36, -91.91, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 105.91, 1.63, -91.41, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 131.36, 1.34, -89.78, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 110.71, 1.62, -101.01, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 99.5, 1.46, -98.9, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 116.96, 1.59, -87.75, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 97.92, 1.46, -99.05, 1.5, math.random(14, 30))
end


