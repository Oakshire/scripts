--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428551.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428551.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:13 
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
	MovementLoopAddLocation(NPC, 1.45, -12.46, 36.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.54, -13.86, 33.09, 2, 0)
	MovementLoopAddLocation(NPC, -18.84, -14.14, 27.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.4, -13.67, 31.45, 2, 0)
	MovementLoopAddLocation(NPC, -3.13, -12.66, 36.62, 2, 0)
	MovementLoopAddLocation(NPC, 1.94, -11.86, 41, 2, 0)
	MovementLoopAddLocation(NPC, 5.18, -11.93, 43.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.93, -12.54, 36.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.85, -12.97, 33.97, 2, 0)
	MovementLoopAddLocation(NPC, 11.44, -13.74, 23.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.81, -13.59, 27.86, 2, 0)
	MovementLoopAddLocation(NPC, -1.76, -13.66, 28.5, 2, 0)
	MovementLoopAddLocation(NPC, -13.95, -13.56, 25.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.8, -13.14, 24.81, 2, 0)
	MovementLoopAddLocation(NPC, 7.82, -12.54, 21.28, 2, 0)
	MovementLoopAddLocation(NPC, 14.91, -12.73, 20, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.4, -13.08, 28.06, 2, 0)
	MovementLoopAddLocation(NPC, 3.57, -13.22, 44.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.04, -12.57, 47.06, 2, 0)
	MovementLoopAddLocation(NPC, 12.03, -12.48, 48.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.1, -11.93, 41.79, 2, 0)
end


