--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425442.lua
	Script Purpose	:	Waypoint Path for ashoalglider425442.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:48 
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
	MovementLoopAddLocation(NPC, -73.89, -11.48, 187.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.45, -12.34, 201.3, 2, 0)
	MovementLoopAddLocation(NPC, -101.17, -11.81, 205.66, 2, 0)
	MovementLoopAddLocation(NPC, -104.11, -11.82, 208.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.31, -12.29, 208.04, 2, 0)
	MovementLoopAddLocation(NPC, -91.69, -11.85, 208.51, 2, 0)
	MovementLoopAddLocation(NPC, -85.65, -11.84, 206.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.33, -11.99, 199.7, 2, 0)
	MovementLoopAddLocation(NPC, -104.36, -12.15, 193.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.32, -14.31, 215.4, 2, 0)
	MovementLoopAddLocation(NPC, -103.97, -14.5, 219.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.38, -13.02, 217.62, 2, 0)
	MovementLoopAddLocation(NPC, -127.78, -12.97, 217.67, 2, 0)
	MovementLoopAddLocation(NPC, -132.18, -13.2, 216.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.74, -12.02, 232.92, 2, 0)
	MovementLoopAddLocation(NPC, -105.48, -12.05, 233.6, 2, 0)
	MovementLoopAddLocation(NPC, -96.58, -13.14, 233.58, 2, 0)
	MovementLoopAddLocation(NPC, -93.95, -13.16, 237.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.09, -11.94, 234.95, 2, 0)
	MovementLoopAddLocation(NPC, -113.08, -11.95, 234.72, 2, 0)
	MovementLoopAddLocation(NPC, -127.15, -11.85, 221.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.15, -12.68, 233.03, 2, 0)
	MovementLoopAddLocation(NPC, -128.97, -13.13, 236.75, 2, 0)
	MovementLoopAddLocation(NPC, -127.23, -13.12, 238.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.61, -13.2, 227.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.12, -14.49, 219.79, 2, 0)
	MovementLoopAddLocation(NPC, -86.92, -13.79, 220.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79.61, -12.37, 206.09, 2, 0)
	MovementLoopAddLocation(NPC, -75.02, -11.38, 191.86, 2, 0)
end

