--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427637.lua
	Script Purpose	:	Waypoint Path for aneedlefang427637.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:27 
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
	MovementLoopAddLocation(NPC, 42.99, -12.04, 59.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.95, -11.9, 55.7, 2, 0)
	MovementLoopAddLocation(NPC, 26.99, -12.97, 51.33, 2, 0)
	MovementLoopAddLocation(NPC, 25.96, -13.08, 49.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.04, -12.6, 44.72, 2, 0)
	MovementLoopAddLocation(NPC, 2.55, -12.52, 40.2, 2, 0)
	MovementLoopAddLocation(NPC, -14.76, -12.91, 29.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.31, -12.83, 41.44, 2, 0)
	MovementLoopAddLocation(NPC, 4.03, -13.19, 44.57, 2, 0)
	MovementLoopAddLocation(NPC, 6.82, -13.68, 47.91, 2, 0)
	MovementLoopAddLocation(NPC, 8.53, -13.59, 53.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.88, -14.65, 43.51, 2, 0)
	MovementLoopAddLocation(NPC, 17.83, -14.72, 41.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.21, -13.95, 36.5, 2, 0)
	MovementLoopAddLocation(NPC, 31.56, -13.89, 29.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.84, -12.17, 30.92, 2, 0)
	MovementLoopAddLocation(NPC, 9.19, -11.89, 36.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.01, -13.37, 41.21, 2, 0)
	MovementLoopAddLocation(NPC, 23.62, -13.35, 43.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.05, -13.55, 39.94, 2, 0)
	MovementLoopAddLocation(NPC, 0.29, -13.14, 34.48, 2, 0)
	MovementLoopAddLocation(NPC, -7.89, -12.66, 31.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.6, -12.96, 37.76, 2, 0)
	MovementLoopAddLocation(NPC, 13.42, -13.05, 41.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.99, -12.99, 45.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.47, -11.92, 52.67, 2, 0)
end


