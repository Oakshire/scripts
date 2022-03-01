--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430312.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430312.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:50 
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
	MovementLoopAddLocation(NPC, -89.36, -8.47, 41.74, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -66.8, -9.62, 27.45, 2, 0)
	MovementLoopAddLocation(NPC, -66.85, -9.61, 27.46, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.18, -8.51, 33.54, 2, 0)
	MovementLoopAddLocation(NPC, -87.18, -8.66, 37.79, 2, 0)
	MovementLoopAddLocation(NPC, -90.06, -8.94, 38.96, 2, 0)
	MovementLoopAddLocation(NPC, -92.31, -9.03, 40.34, 2, 0)
--	MovementLoopAddLocation(NPC, -94.52, -9.51, 40.44, 2, 0)
	MovementLoopAddLocation(NPC, -94.45, -9.49, 40.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.67, -9.08, 40.46, 2, 0)
	MovementLoopAddLocation(NPC, -81.2, -9.36, 30.94, 2, 0)
--	MovementLoopAddLocation(NPC, -79.42, -9.75, 28.96, 2, 0)
	MovementLoopAddLocation(NPC, -79.51, -9.75, 29.04, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -87.03, -9.21, 34.56, 2, 0)
	MovementLoopAddLocation(NPC, -86.91, -9.18, 34.61, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.15, -8.37, 36.55, 2, 0)
	MovementLoopAddLocation(NPC, -59.69, -8.52, 44.46, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -65.92, -7.38, 53.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.08, -8.43, 42.63, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -55.46, -9.64, 38.36, 2, 0)
	MovementLoopAddLocation(NPC, -55.55, -9.63, 38.35, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.69, -7.62, 36.98, 2, 0)
	MovementLoopAddLocation(NPC, -85.82, -9.28, 32.33, 2, 0)
--	MovementLoopAddLocation(NPC, -87.21, -9.68, 32.02, 2, 0)
	MovementLoopAddLocation(NPC, -87.16, -9.67, 32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.22, -9.48, 31.03, 2, 0)
	MovementLoopAddLocation(NPC, -80.32, -9.28, 30.82, 2, 0)
	MovementLoopAddLocation(NPC, -75.16, -9.2, 28.64, 2, 0)
	MovementLoopAddLocation(NPC, -74.17, -9.31, 27.62, 2, 0)
--	MovementLoopAddLocation(NPC, -73.07, -9.79, 25.35, 2, 0)
	MovementLoopAddLocation(NPC, -73.12, -9.8, 25.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -73.81, -9.7, 26.07, 2, 0)
	MovementLoopAddLocation(NPC, -76.95, -8.79, 30.9, 2, 0)
end

