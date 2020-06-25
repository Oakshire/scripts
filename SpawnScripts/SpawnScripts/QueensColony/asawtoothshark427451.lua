--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427451.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427451.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:11 
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
	MovementLoopAddLocation(NPC, 86.41, -11, 5.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.24, -11, 8.56, 2, 0)
	MovementLoopAddLocation(NPC, 72.26, -12.33, 12.61, 2, 0)
	MovementLoopAddLocation(NPC, 61.2, -12.51, 12.67, 2, 0)
	MovementLoopAddLocation(NPC, 54.17, -12.67, 9.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.18, -12.06, 15.39, 2, 0)
	MovementLoopAddLocation(NPC, 41.39, -12.22, 25.77, 2, 0)
	MovementLoopAddLocation(NPC, 27.07, -13.56, 42.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.25, -11.97, 54.43, 2, 0)
	MovementLoopAddLocation(NPC, 31.88, -10.7, 68.88, 2, 0)
	MovementLoopAddLocation(NPC, 35.48, -10.7, 80.03, 2, 0)
	MovementLoopAddLocation(NPC, 38.16, -10.7, 84.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.99, -10.7, 71.44, 2, 0)
	MovementLoopAddLocation(NPC, 56.76, -10.7, 45.17, 2, 0)
	MovementLoopAddLocation(NPC, 63.19, -10.7, 25.16, 2, 0)
	MovementLoopAddLocation(NPC, 72.96, -12.2, 13.78, 2, 0)
	MovementLoopAddLocation(NPC, 76.63, -13.2, 8.33, 2, 0)
	MovementLoopAddLocation(NPC, 82.75, -12.92, -4.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.82, -12.56, 9.95, 2, 0)
	MovementLoopAddLocation(NPC, 84.39, -12.67, 22.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.46, -12.77, 28.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.92, -12.62, 14.45, 2, math.random(10, 20))
end


