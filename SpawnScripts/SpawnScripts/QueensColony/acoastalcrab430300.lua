--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430300.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430300.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:05 
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
	MovementLoopAddLocation(NPC, -79.66, -7.76, 106.57, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.55, -8.82, 104.84, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.7, -8.46, 109.98, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.02, -9.65, 97.75, 2, 0)
	MovementLoopAddLocation(NPC, -96.97, -9.64, 97.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.44, -7.77, 104.52, 2, 0)
	MovementLoopAddLocation(NPC, -84.72, -7.66, 105.45, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.85, -8.66, 113.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.75, -8.06, 101.86, 2, 0)
	MovementLoopAddLocation(NPC, -91.79, -7.88, 90.41, 2, 0)
--	MovementLoopAddLocation(NPC, -96.98, -9.75, 85.71, 2, 0)
	MovementLoopAddLocation(NPC, -96.89, -9.75, 85.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.36, -7.13, 104.4, 2, 0)
end


