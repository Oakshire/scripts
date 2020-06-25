--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430315.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430315.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:44:07 
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
	MovementLoopAddLocation(NPC, -60.79, -8.34, 44.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.54, -8.74, 30.71, 2, 0)
--	MovementLoopAddLocation(NPC, -68.95, -9.69, 25.32, 2, 0)
	MovementLoopAddLocation(NPC, -68.91, -9.64, 25.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.03, -8.34, 32.17, 2, 0)
	MovementLoopAddLocation(NPC, -66.06, -7.69, 37.25, 2, 0)
	MovementLoopAddLocation(NPC, -62.06, -8.52, 40.41, 2, 0)
	MovementLoopAddLocation(NPC, -59.93, -8.52, 44.17, 2, 0)
--	MovementLoopAddLocation(NPC, -58.22, -8.75, 45.06, 2, 0)
	MovementLoopAddLocation(NPC, -58.3, -8.74, 45, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -76.44, -8.18, 33.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.29, -8.4, 37.4, 2, 0)
	MovementLoopAddLocation(NPC, -88.47, -8.53, 40.34, 2, 0)
	MovementLoopAddLocation(NPC, -90.71, -8.64, 41.31, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.84, -8.14, 35.52, 2, 0)
	MovementLoopAddLocation(NPC, -73.39, -8.51, 30.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -75.28, -8.3, 32.26, 2, 0)
	MovementLoopAddLocation(NPC, -90.48, -8.92, 39.59, 2, 0)
	MovementLoopAddLocation(NPC, -92.93, -9.15, 40.4, 2, 0)
--	MovementLoopAddLocation(NPC, -97.17, -9.81, 42.71, 2, 0)
	MovementLoopAddLocation(NPC, -97.05, -9.76, 42.73, 2, math.random(16, 24))
end


