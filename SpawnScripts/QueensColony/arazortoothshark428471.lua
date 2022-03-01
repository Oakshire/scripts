--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428471.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428471.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:54:07 
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
	MovementLoopAddLocation(NPC, -15.34, -12.02, -15.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.7, -12.15, -27.4, 2, 0)
	MovementLoopAddLocation(NPC, -21.68, -12.24, -29.87, 2, 0)
	MovementLoopAddLocation(NPC, -25.54, -12.53, -32.71, 2, 0)
	MovementLoopAddLocation(NPC, -27.9, -12.47, -35.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.08, -12.67, -39.84, 2, 0)
	MovementLoopAddLocation(NPC, -20.36, -12.34, -44.45, 2, 0)
	MovementLoopAddLocation(NPC, -17.36, -11.4, -48.4, 2, 0)
	MovementLoopAddLocation(NPC, -4.13, -11.37, -61.82, 2, 0)
	MovementLoopAddLocation(NPC, -1.54, -11.44, -67.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.18, -11.3, -48.27, 2, 0)
	MovementLoopAddLocation(NPC, -5.13, -11.33, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, -8.17, -11.27, -35.66, 2, 0)
	MovementLoopAddLocation(NPC, -8.5, -11.31, -31.49, 2, 0)
	MovementLoopAddLocation(NPC, -10.72, -11.8, -24.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.86, -11.51, -32.44, 2, 0)
	MovementLoopAddLocation(NPC, -25.74, -11.29, -43.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.43, -11.32, -33.33, 2, 0)
	MovementLoopAddLocation(NPC, -35.99, -11.15, -30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.06, -11.56, -44.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.78, -11.96, -37.1, 2, 0)
	MovementLoopAddLocation(NPC, -35.17, -12.49, -28.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.27, -11.38, -34.17, 2, math.random(10, 20))
end

