--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427628.lua
	Script Purpose	:	Waypoint Path for aneedlefang427628.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:44 
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
	MovementLoopAddLocation(NPC, 49.36, -11, 65.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.81, -10.8, 58.44, 2, 0)
	MovementLoopAddLocation(NPC, 69.52, -11.76, 28.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.55, -11.42, 23.65, 2, 0)
	MovementLoopAddLocation(NPC, 62.32, -11.91, 9, 2, 0)
	MovementLoopAddLocation(NPC, 57.88, -12.52, 3.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.05, -11.91, 15.9, 2, 0)
	MovementLoopAddLocation(NPC, 41.27, -12.13, 25.78, 2, 0)
	MovementLoopAddLocation(NPC, 34.16, -12.92, 37.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.64, -13.57, 39.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.13, -12.72, 42.78, 2, 0)
	MovementLoopAddLocation(NPC, 38.74, -12.14, 46.27, 2, 0)
	MovementLoopAddLocation(NPC, 58.93, -11.67, 50.77, 2, 0)
	MovementLoopAddLocation(NPC, 77.5, -12.17, 57.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.97, -12.1, 48.9, 2, 0)
	MovementLoopAddLocation(NPC, 67.6, -12.38, 42.97, 2, 0)
	MovementLoopAddLocation(NPC, 65.99, -13.1, 30.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.05, -12.61, 37.86, 2, 0)
	MovementLoopAddLocation(NPC, 57.54, -11.57, 48.79, 2, 0)
	MovementLoopAddLocation(NPC, 53.4, -11.17, 57.73, 2, 0)
end


