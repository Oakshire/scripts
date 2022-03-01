--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428463.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428463.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:30 
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
	MovementLoopAddLocation(NPC, -15.86, -11.82, -28.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.94, -11.92, -20.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.42, -11.21, -39.76, 2, 0)
	MovementLoopAddLocation(NPC, -40.42, -11.17, -50.41, 2, 0)
	MovementLoopAddLocation(NPC, -44.54, -11.29, -64.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.2, -10.72, -44.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.07, -10.7, -19.37, 2, 0)
	MovementLoopAddLocation(NPC, -23.94, -12.01, 1.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.31, -12.42, -14.61, 2, 0)
	MovementLoopAddLocation(NPC, -8.15, -12.22, -19.72, 2, 0)
	MovementLoopAddLocation(NPC, -2.77, -12.11, -22.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.29, -11.8, -23.99, 2, 0)
	MovementLoopAddLocation(NPC, -21.57, -11.91, -26.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.36, -11.01, -27.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.05, -11.88, -23.42, 2, 0)
	MovementLoopAddLocation(NPC, -5.58, -12.16, -12.6, 2, math.random(10, 20))
end


