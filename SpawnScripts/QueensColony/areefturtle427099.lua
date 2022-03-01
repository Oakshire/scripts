--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427099.lua
	Script Purpose	:	Waypoint Path for areefturtle427099.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:15 
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
	MovementLoopAddLocation(NPC, 79.83, -13.64, 15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.87, -13.39, 16.74, 2, 0)
	MovementLoopAddLocation(NPC, 74.16, -12.1, 19.13, 2, 0)
	MovementLoopAddLocation(NPC, 69.14, -10.2, 22.93, 2, 0)
	MovementLoopAddLocation(NPC, 66.72, -10.2, 26.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.23, -10.2, 24.48, 2, 0)
	MovementLoopAddLocation(NPC, 85.76, -11.79, 21.69, 2, 0)
	MovementLoopAddLocation(NPC, 97.21, -12.08, 22.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.23, -12.88, 30.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.45, -12.25, 13.91, 2, 0)
	MovementLoopAddLocation(NPC, 95.66, -11.8, -1.36, 2, 0)
	MovementLoopAddLocation(NPC, 97.02, -11.69, -9.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.67, -12.5, 7.6, 2, 0)
	MovementLoopAddLocation(NPC, 71.15, -12.21, 12.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.58, -13.34, 13.33, 2, 0)
end


