--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428287.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428287.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:01 
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
	MovementLoopAddLocation(NPC, 150.3, 1.36, -50.8, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.3, 1.23, -53.81, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 141.17, 1.3, -68.35, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 132.46, 1.33, -86.76, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 137.86, 1.51, -59.5, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 145.62, 0.94, -86.96, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 150.08, 0.73, -80.4, 1.5, 0)
	MovementLoopAddLocation(NPC, 151.87, 0.51, -76.01, 1.5, 0)
	MovementLoopAddLocation(NPC, 151.96, 1.39, -69.46, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 160.11, 1.32, -61.16, 1.5, 0)
	MovementLoopAddLocation(NPC, 165.83, 1.33, -58.16, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165, 0.58, -62.31, 1.5, 0)
	MovementLoopAddLocation(NPC, 162.54, 0.34, -66.4, 1.5, 0)
	MovementLoopAddLocation(NPC, 162.99, 0.33, -69.41, 1.5, 0)
	MovementLoopAddLocation(NPC, 162.42, 0.33, -74.81, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.22, 0.31, -72.46, 1.5, 0)
	MovementLoopAddLocation(NPC, 171.03, 0.3, -63.36, 1.5, 0)
	MovementLoopAddLocation(NPC, 174.51, 0.9, -59.56, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.7, 0.32, -69.69, 1.5, 0)
	MovementLoopAddLocation(NPC, 161.48, 0.33, -74.14, 1.5, 0)
	MovementLoopAddLocation(NPC, 149.15, 0.99, -79.15, 1.5, 0)
	MovementLoopAddLocation(NPC, 141.46, 1.46, -77.84, 1.5, math.random(14, 30))
end

