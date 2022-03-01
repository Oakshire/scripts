--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428580.lua
 	Script Purpose	:	Waypoint Path for arazortoothshark428580.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:46 
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
	MovementLoopAddLocation(NPC, -19.17, -11.18, -32.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.29, -11.73, -41.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.21, -11.86, -38.99, 2, 0)
	MovementLoopAddLocation(NPC, -30.1, -12.19, -37.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.67, -11.63, -45.44, 2, 0)
	MovementLoopAddLocation(NPC, -16.48, -11.05, -50.22, 2, 0)
	MovementLoopAddLocation(NPC, -10.21, -11.18, -58.72, 2, 0)
	MovementLoopAddLocation(NPC, -5.02, -11.79, -64.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.55, -10.7, -64.33, 2, 0)
	MovementLoopAddLocation(NPC, -18.26, -10.7, -69.53, 2, 0)
	MovementLoopAddLocation(NPC, -32.72, -10.7, -81.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.67, -10.7, -64.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.37, -11.12, -58.51, 2, 0)
	MovementLoopAddLocation(NPC, -34.01, -11.09, -52.78, 2, 0)
	MovementLoopAddLocation(NPC, -20.89, -10.97, -50.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.03, -11.02, -40.53, 2, 0)
	MovementLoopAddLocation(NPC, -59.26, -10.7, -44.71, 2, 0)
	MovementLoopAddLocation(NPC, -69.09, -11.05, -40, 2, 0)
	MovementLoopAddLocation(NPC, -71.54, -10.7, -23.32, 2, 0)
	MovementLoopAddLocation(NPC, -90.61, -11.12, -7.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.9, -11.82, -17.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -87.12, -10.7, 17.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79.85, -10.7, 13.32, 2, 0)
	MovementLoopAddLocation(NPC, -65.79, -10.7, 3.44, 2, 0)
	MovementLoopAddLocation(NPC, -45.19, -10.7, -14.34, 2, 0)
	MovementLoopAddLocation(NPC, -28.92, -10.7, -27.34, 2, 0)
end

