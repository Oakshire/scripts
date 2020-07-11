--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769522.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769522.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:14:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 238.54, -0.85, -132.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 253.52, -1.12, -151.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 245.79, -0.87, -143.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.72, -1.46, -120.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 228.63, -0.81, -128.66, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.75, -0.8, -117.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.55, -1.17, -115.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 233.81, -0.83, -137.18, 2, math.random(14, 25))
end

