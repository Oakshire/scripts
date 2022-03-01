--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430314.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430314.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:44:01 
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
	MovementLoopAddLocation(NPC, -74.64, -9.98, 25.4, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.02, -9.4, 27.21, 2, 0)
	MovementLoopAddLocation(NPC, -70.64, -8.32, 32.14, 2, 0)
	MovementLoopAddLocation(NPC, -64.5, -7.83, 47.25, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.03, -8.34, 32.15, 2, 0)
--	MovementLoopAddLocation(NPC, -68.15, -8.96, 29.65, 2, 0)
	MovementLoopAddLocation(NPC, -68.19, -8.95, 29.67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -72.02, -8.29, 31.97, 2, 0)
	MovementLoopAddLocation(NPC, -79.72, -8.47, 33.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -63.77, -7.91, 52.23, 2, 0)
--	MovementLoopAddLocation(NPC, -60.02, -8.89, 53.79, 2, 0)
	MovementLoopAddLocation(NPC, -60.12, -8.88, 53.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -62.88, -8.19, 51.94, 2, 0)
	MovementLoopAddLocation(NPC, -73.27, -8.26, 31.99, 2, 0)
	MovementLoopAddLocation(NPC, -73.93, -8.62, 30.07, 2, 0)
--	MovementLoopAddLocation(NPC, -75.42, -9.64, 27.53, 2, 0)
	MovementLoopAddLocation(NPC, -75.49, -9.61, 27.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.8, -9.04, 32.39, 2, 0)
--	MovementLoopAddLocation(NPC, -89, -9.59, 34.49, 2, 0)
	MovementLoopAddLocation(NPC, -89.02, -9.55, 34.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.76, -9.24, 37.14, 2, 0)
--	MovementLoopAddLocation(NPC, -91.73, -9.74, 36.91, 2, 0)
	MovementLoopAddLocation(NPC, -91.66, -9.72, 36.9, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.88, -8.9, 36.77, 2, 0)
--	MovementLoopAddLocation(NPC, -65.85, -8.67, 32.67, 2, 0)
	MovementLoopAddLocation(NPC, -65.93, -8.64, 32.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.32, -8.64, 31.48, 2, 0)
--	MovementLoopAddLocation(NPC, -74.62, -10.13, 25.3, 2, 0)
end

