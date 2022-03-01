--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428448.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428448.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:53 
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
	MovementLoopAddLocation(NPC, -32.9, -10.7, -17.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.4, -10.7, -7.45, 2, 0)
	MovementLoopAddLocation(NPC, -40.49, -10.59, 7.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.33, -10.7, 6.79, 2, 0)
	MovementLoopAddLocation(NPC, -62.05, -10.7, 1.68, 2, 0)
	MovementLoopAddLocation(NPC, -70.01, -10.7, 0.98, 2, 0)
	MovementLoopAddLocation(NPC, -81.89, -10.7, -1.39, 2, 0)
	MovementLoopAddLocation(NPC, -91.38, -11.21, -1.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.08, -11.15, -14.77, 2, 0)
	MovementLoopAddLocation(NPC, -78, -11.03, -17.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -80.4, -11.14, -16.29, 2, 0)
	MovementLoopAddLocation(NPC, -83.91, -11.37, -14.94, 2, 0)
	MovementLoopAddLocation(NPC, -91.74, -11.72, -5.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -87.83, -11.66, -10.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.01, -10.7, -6.39, 2, 0)
	MovementLoopAddLocation(NPC, -70.28, -10.7, -3.33, 2, 0)
	MovementLoopAddLocation(NPC, -54.19, -10.7, 3.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.84, -10.7, -1.59, 2, 0)
	MovementLoopAddLocation(NPC, -40.04, -10.7, -8.84, 2, 0)
end


