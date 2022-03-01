--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428479.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428479.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:06 
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
	MovementLoopAddLocation(NPC, 30.35, -11.71, -84.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.84, -11.87, -80.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.22, -11.08, -89.78, 2, 0)
	MovementLoopAddLocation(NPC, 19.2, -11.33, -92.4, 2, 0)
	MovementLoopAddLocation(NPC, 14.03, -11.61, -94.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.12, -10.97, -87.88, 2, 0)
	MovementLoopAddLocation(NPC, 38.79, -11.04, -85.76, 2, 0)
	MovementLoopAddLocation(NPC, 41.63, -11.22, -84.85, 2, 0)
	MovementLoopAddLocation(NPC, 44.77, -11.63, -84.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.63, -11.28, -77.92, 2, 0)
	MovementLoopAddLocation(NPC, 61.58, -10.7, -53.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.4, -10.7, -46.98, 2, 0)
	MovementLoopAddLocation(NPC, 78.67, -10.59, -43.02, 2, 0)
	MovementLoopAddLocation(NPC, 88.34, -11.36, -37.98, 2, 0)
	MovementLoopAddLocation(NPC, 94.61, -11.75, -33.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.92, -11.98, -26.41, 2, 0)
	MovementLoopAddLocation(NPC, 99.46, -11.38, -18.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.94, -11.69, -27.35, 2, 0)
	MovementLoopAddLocation(NPC, 101.94, -11.46, -35.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.59, -11.32, -40.23, 2, 0)
	MovementLoopAddLocation(NPC, 79.19, -10.7, -47.87, 2, 0)
	MovementLoopAddLocation(NPC, 75.3, -10.7, -51.17, 2, 0)
	MovementLoopAddLocation(NPC, 59.46, -11.54, -79.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.9, -11.97, -68.06, 2, 0)
	MovementLoopAddLocation(NPC, 73.03, -11.79, -61.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.73, -11.28, -48.76, 2, 0)
	MovementLoopAddLocation(NPC, 63.63, -10.99, -45.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.25, -11.16, -48.35, 2, 0)
	MovementLoopAddLocation(NPC, 66.22, -11.25, -52.02, 2, 0)
	MovementLoopAddLocation(NPC, 75.52, -11.27, -62.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.41, -11.14, -65.16, 2, 0)
	MovementLoopAddLocation(NPC, 42.68, -10.79, -77.21, 2, 0)
	MovementLoopAddLocation(NPC, 37.34, -11.65, -80.98, 2, 0)
end
