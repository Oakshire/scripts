--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428447.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428447.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:16 
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
	MovementLoopAddLocation(NPC, -11.16, -12.6, -15.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.24, -12.23, -17.61, 2, 0)
	MovementLoopAddLocation(NPC, -21.75, -12.12, -30.64, 2, 0)
	MovementLoopAddLocation(NPC, -22.19, -12.06, -34.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.16, -11.76, -46.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.94, -11.97, -44.25, 2, 0)
	MovementLoopAddLocation(NPC, -43.75, -10.7, -33.7, 2, 0)
	MovementLoopAddLocation(NPC, -52.33, -10.7, -31.18, 2, 0)
	MovementLoopAddLocation(NPC, -57.16, -10.7, -23.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.98, -10.7, -19.28, 2, 0)
	MovementLoopAddLocation(NPC, -53.05, -10.7, -7.59, 2, 0)
	MovementLoopAddLocation(NPC, -55.99, -11.04, 3.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -62.01, -10.7, -0.04, 2, 0)
	MovementLoopAddLocation(NPC, -77.99, -10.7, -9.04, 2, 0)
	MovementLoopAddLocation(NPC, -90.37, -10.7, -11.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.29, -11.36, 5.87, 2, 0)
	MovementLoopAddLocation(NPC, -89.87, -11.15, 18.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.74, -11.54, -16.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.24, -11.74, 10.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.4, -10.7, 15.58, 2, 0)
	MovementLoopAddLocation(NPC, -51.38, -10.7, 17.27, 2, 0)
	MovementLoopAddLocation(NPC, -45.15, -11.32, 15.19, 2, 0)
	MovementLoopAddLocation(NPC, -41.1, -11.04, 11.66, 2, 0)
	MovementLoopAddLocation(NPC, -34.92, -10.7, 6.98, 2, 0)
	MovementLoopAddLocation(NPC, -28.07, -11.55, 0.11, 2, 0)
	MovementLoopAddLocation(NPC, -20.28, -12.02, -3.74, 2, 0)
	MovementLoopAddLocation(NPC, -15.4, -11.9, -6.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.06, -11.75, -30.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.03, -12.35, -22.76, 2, 0)
end
