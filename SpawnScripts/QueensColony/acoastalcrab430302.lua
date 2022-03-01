--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430302.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430302.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:15 
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
	MovementLoopAddLocation(NPC, -92.71, -8.29, 85.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.79, -8.33, 110.89, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.75, -9.03, 97.82, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -96.49, -9.49, 95.4, 2, 0)
--	MovementLoopAddLocation(NPC, -97.53, -9.75, 88.6, 2, 0)
	MovementLoopAddLocation(NPC, -97.55, -9.75, 88.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.89, -9.75, 89.54, 2, 0)
	MovementLoopAddLocation(NPC, -96.52, -9.5, 94.41, 2, 0)
	MovementLoopAddLocation(NPC, -93.75, -8.79, 98.89, 2, 0)
	MovementLoopAddLocation(NPC, -86.4, -7.87, 107.15, 2, 0)
	MovementLoopAddLocation(NPC, -80.99, -8.99, 115.89, 2, 0)
--	MovementLoopAddLocation(NPC, -79.53, -9.49, 117.59, 2, 0)
	MovementLoopAddLocation(NPC, -79.61, -9.45, 117.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.56, -8.42, 110.75, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -72.52, -8.98, 103.45, 2, 0)
	MovementLoopAddLocation(NPC, -72.55, -8.96, 103.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.16, -7.12, 95.72, 2, 0)
end

