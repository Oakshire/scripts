--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428290.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428290.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:32 
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
	MovementLoopAddLocation(NPC, 125.53, 1.58, -94.97, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 103.13, 1.64, -91.74, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 113.58, 1.42, -96.46, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 115.39, 1.57, -96.98, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 134.49, 1.32, -87.06, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 133.97, 1.33, -89.28, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 117.14, 1.59, -96.72, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 124.79, 1.56, -80.07, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 127.89, 1.55, -81.83, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 101.01, 1.85, -105.32, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 93.01, 1.52, -106.14, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 100.61, 1.45, -101.93, 1.5, 0)
end


