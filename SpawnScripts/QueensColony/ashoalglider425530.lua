--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425530.lua
	Script Purpose	:	Waypoint Path for ashoalglider425530.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:18 
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
	MovementLoopAddLocation(NPC, 79.89, -13.29, 15.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76, -12.59, 21.53, 2, 0)
	MovementLoopAddLocation(NPC, 70.04, -12.37, 37.85, 2, 0)
	MovementLoopAddLocation(NPC, 64.33, -12.34, 49.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.89, -11.89, 47.91, 2, 0)
	MovementLoopAddLocation(NPC, 11.72, -12.25, 47.95, 2, 0)
	MovementLoopAddLocation(NPC, -8.67, -11.54, 49.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.63, -12.67, 34.92, 2, 0)
	MovementLoopAddLocation(NPC, 28.29, -13.32, 28.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.54, -13.15, 30.86, 2, 0)
	MovementLoopAddLocation(NPC, 9.15, -12.9, 31.85, 2, 0)
	MovementLoopAddLocation(NPC, 3.2, -12.97, 32.23, 2, 0)
	MovementLoopAddLocation(NPC, -3.23, -12.9, 33.02, 2, 0)
	MovementLoopAddLocation(NPC, -7.71, -12.93, 33.23, 2, 0)
	MovementLoopAddLocation(NPC, -14.99, -12.89, 34.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.44, -12.49, 36.74, 2, 0)
	MovementLoopAddLocation(NPC, 4.18, -11.85, 40.9, 2, 0)
	MovementLoopAddLocation(NPC, 19.75, -11.42, 48.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.53, -10.7, 74.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.81, -10.7, 44.85, 2, 0)
	MovementLoopAddLocation(NPC, 67.61, -10.7, 22.51, 2, 0)
	MovementLoopAddLocation(NPC, 71.71, -10.7, 11.51, 2, 0)
	MovementLoopAddLocation(NPC, 74.82, -11.14, 6.46, 2, 0)
	MovementLoopAddLocation(NPC, 78.13, -12.47, 0.13, 2, 0)
	MovementLoopAddLocation(NPC, 77.77, -13.02, -5.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.72, -13.32, 9.14, 2, 0)
end

