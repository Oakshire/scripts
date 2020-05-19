--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425976.lua
	Script Purpose	:	Waypoint Path for atriggerfish425976.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:40 
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
	MovementLoopAddLocation(NPC, -119.45, -14.93, 208.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.86, -14.98, 197.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.86, -14.43, 207.05, 2, 0)
	MovementLoopAddLocation(NPC, -83.92, -13.97, 216.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.45, -13.45, 205.84, 2, 0)
	MovementLoopAddLocation(NPC, -75.75, -12.89, 200.68, 2, 0)
	MovementLoopAddLocation(NPC, -73.93, -12.9, 195.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.55, -11.71, 197.99, 2, 0)
	MovementLoopAddLocation(NPC, -94.59, -9.94, 198.88, 2, 0)
	MovementLoopAddLocation(NPC, -105.14, -12.23, 213.68, 2, 0)
	MovementLoopAddLocation(NPC, -106.71, -12.43, 216.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.7, -14.97, 218.66, 2, 0)
	MovementLoopAddLocation(NPC, -96.45, -15.01, 222.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.46, -14.9, 223.96, 2, 0)
	MovementLoopAddLocation(NPC, -132.35, -14.93, 223.1, 2, 0)
	MovementLoopAddLocation(NPC, -136.77, -15.06, 225.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.43, -14.93, 224.06, 2, 0)
	MovementLoopAddLocation(NPC, -106.1, -13.42, 218.74, 2, 0)
	MovementLoopAddLocation(NPC, -101.29, -13.48, 216.77, 2, 0)
	MovementLoopAddLocation(NPC, -97.54, -14.87, 210.24, 2, 0)
	MovementLoopAddLocation(NPC, -96.55, -14.93, 207.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.21, -14.97, 203.47, 2, 0)
end

