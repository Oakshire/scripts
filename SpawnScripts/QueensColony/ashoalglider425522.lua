--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425522.lua
	Script Purpose	:	Waypoint Path for ashoalglider425522.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:03 
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
	MovementLoopAddLocation(NPC, -11.17, -11.43, 46.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.59, -11.24, 59.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.7, -11.97, 54.71, 2, 0)
	MovementLoopAddLocation(NPC, 7.41, -13.36, 32.3, 2, 0)
	MovementLoopAddLocation(NPC, 9.14, -13.48, 21.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.25, -11.95, 39.23, 2, 0)
	MovementLoopAddLocation(NPC, 12.64, -11.54, 47.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.32, -11.94, 27.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.42, -12.88, 44.74, 2, 0)
	MovementLoopAddLocation(NPC, 6.95, -12.77, 53.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.77, -12.26, 50.57, 2, 0)
	MovementLoopAddLocation(NPC, 34.43, -11.87, 50.13, 2, 0)
	MovementLoopAddLocation(NPC, 42.73, -12, 52.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.48, -11.93, 43.61, 2, 0)
	MovementLoopAddLocation(NPC, 38.82, -12.4, 36.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.83, -12.87, 37.47, 2, 0)
	MovementLoopAddLocation(NPC, 20.79, -13.46, 43.24, 2, 0)
	MovementLoopAddLocation(NPC, 16.46, -12.8, 51.02, 2, 0)
	MovementLoopAddLocation(NPC, 15.53, -12.43, 59.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.29, -11.73, 54.42, 2, 0)
end

