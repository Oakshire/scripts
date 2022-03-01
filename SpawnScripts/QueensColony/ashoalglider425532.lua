--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425532.lua
	Script Purpose	:	Waypoint Path for ashoalglider425532.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:02 
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
	MovementLoopAddLocation(NPC, 56.09, -12.46, 12.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.36, -12.55, 16.37, 2, 0)
	MovementLoopAddLocation(NPC, 18.59, -13.67, 26.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.64, -11.27, 42.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37, -12, 40.32, 2, 0)
	MovementLoopAddLocation(NPC, 5.58, -12.78, 40.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.95, -12.94, 42.45, 2, 0)
	MovementLoopAddLocation(NPC, 37.48, -11.7, 45.68, 2, 0)
	MovementLoopAddLocation(NPC, 43.81, -11.72, 50.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.12, -11.9, 49.41, 2, 0)
	MovementLoopAddLocation(NPC, 14.93, -11.99, 54.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.25, -12.02, 49.93, 2, 0)
	MovementLoopAddLocation(NPC, 59.97, -11.42, 45.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.16, -10.57, 34.09, 2, 0)
	MovementLoopAddLocation(NPC, 55.9, -11.78, 16.51, 2, 0)
	MovementLoopAddLocation(NPC, 57.58, -12.49, 8.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.63, -12.42, 10.45, 2, 0)
	MovementLoopAddLocation(NPC, 64.15, -12.64, 14.93, 2, math.random(10, 20))
end


