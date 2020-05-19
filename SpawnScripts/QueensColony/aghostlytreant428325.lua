--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428325.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428325.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:09 
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
	MovementLoopAddLocation(NPC, 147.97, 1.31, -79.64, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 128.25, 1.55, -78.57, 1.5, 0)
	MovementLoopAddLocation(NPC, 122.83, 1.57, -76.64, 1.5, 0)
	MovementLoopAddLocation(NPC, 119.51, 1.58, -77.67, 1.5, 0)
	MovementLoopAddLocation(NPC, 117.1, 1.59, -80.08, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 129.18, 1.34, -88.16, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 129.64, 1.54, -71.3, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 131.13, 1.54, -74.15, 1.5, 0)
	MovementLoopAddLocation(NPC, 133.67, 1.53, -76.23, 1.5, 0)
	MovementLoopAddLocation(NPC, 137.86, 1.31, -76.57, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 150.67, 0.57, -77.85, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 130.76, 1.49, -83.69, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 130.93, 1.54, -73.86, 1.5, 0)
	MovementLoopAddLocation(NPC, 140.95, 1.49, -55.26, 1.5, 0)
	MovementLoopAddLocation(NPC, 142.66, 1.4, -49.49, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 158.17, 1.33, -56.53, 1.5, 0)
	MovementLoopAddLocation(NPC, 161.95, 1.39, -59.06, 1.5, 0)
	MovementLoopAddLocation(NPC, 171.01, 0.38, -60.97, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 170.07, 0.3, -63.83, 1.5, 0)
	MovementLoopAddLocation(NPC, 164.86, 0.32, -69.61, 1.5, 0)
	MovementLoopAddLocation(NPC, 155.72, 0.36, -83.07, 1.5, math.random(14, 30))
end


