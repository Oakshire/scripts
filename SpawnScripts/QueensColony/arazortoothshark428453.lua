--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428453.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428453.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:42 
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
	MovementLoopAddLocation(NPC, -42.17, -11.78, 29.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.93, -12.63, 31.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.83, -12.16, 23.16, 2, 0)
	MovementLoopAddLocation(NPC, -41.6, -11.23, 13.2, 2, 0)
	MovementLoopAddLocation(NPC, -40.4, -10.94, 8.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.27, -11.23, 4.54, 2, 0)
	MovementLoopAddLocation(NPC, -29.62, -11.25, 0.6, 2, 0)
	MovementLoopAddLocation(NPC, -23.71, -11.24, -6.72, 2, 0)
	MovementLoopAddLocation(NPC, -9.54, -11.69, -18.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.85, -11.7, -21.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.47, -12.09, -26.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.69, -11.79, -7.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.43, -11.76, 1.4, 2, 0)
	MovementLoopAddLocation(NPC, -25.61, -11.68, 10.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.05, -11.69, 13.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.04, -11.99, 10.7, 2, 0)
	MovementLoopAddLocation(NPC, -19.76, -12.45, 7.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.53, -11.65, 24.98, 2, 0)
end

