--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427086.lua
	Script Purpose	:	Waypoint Path for areefturtle427086.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:14 
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
	MovementLoopAddLocation(NPC, 46.69, -13.73, -20.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.66, -12.64, -18.29, 2, 0)
	MovementLoopAddLocation(NPC, 56.63, -12.99, -15.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.28, -12.57, -17.32, 2, 0)
	MovementLoopAddLocation(NPC, 31.91, -12.39, -17.66, 2, 0)
	MovementLoopAddLocation(NPC, 28.75, -12.51, -15.83, 2, 0)
	MovementLoopAddLocation(NPC, 23.9, -12.72, -11.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.12, -12.87, 2.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.83, -13.12, -1.38, 2, 0)
	MovementLoopAddLocation(NPC, 25.14, -12.52, -20.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.23, -13.49, -13.16, 2, 0)
	MovementLoopAddLocation(NPC, 40.57, -13.88, -7.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.18, -14.09, -14.19, 2, 0)
	MovementLoopAddLocation(NPC, 27.05, -13.22, -23.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.1, -14.19, -18.89, 2, 0)
	MovementLoopAddLocation(NPC, 35.72, -14.68, -9.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.63, -12.11, -7.84, 2, 0)
	MovementLoopAddLocation(NPC, 28.62, -11.91, -4.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.94, -12.63, -11.69, 2, 0)
	MovementLoopAddLocation(NPC, 42.16, -13.17, -14.88, 2, 0)
end

