--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427641.lua
 	Script Purpose	:	Waypoint Path for aneedlefang427641.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:50:16 
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
	MovementLoopAddLocation(NPC, -1.45, -13.88, 37.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.73, -13.96, 35.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.94, -13.33, 31.56, 2, 0)
	MovementLoopAddLocation(NPC, 16.96, -13.2, 27.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.84, -13.6, 24.27, 2, 0)
	MovementLoopAddLocation(NPC, 8.81, -13.58, 18.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.77, -13.42, 30.41, 2, 0)
	MovementLoopAddLocation(NPC, 6.26, -13.15, 36.84, 2, 0)
	MovementLoopAddLocation(NPC, 2.95, -12.14, 44.13, 2, 0)
	MovementLoopAddLocation(NPC, -3.24, -12.16, 52.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.76, -12.84, 48.43, 2, 0)
	MovementLoopAddLocation(NPC, 29.21, -13.8, 45.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.19, -13.42, 36.3, 2, 0)
	MovementLoopAddLocation(NPC, 11.99, -13.9, 24.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.4, -13.02, 24.38, 2, 0)
	MovementLoopAddLocation(NPC, 22.79, -13.05, 22.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.57, -11.98, 37.4, 2, 0)
	MovementLoopAddLocation(NPC, 21.52, -13.06, 55.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.46, -12.61, 58.87, 2, 0)
	MovementLoopAddLocation(NPC, 40.97, -10.49, 62.44, 2, 0)
	MovementLoopAddLocation(NPC, 50.27, -10.66, 65.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.89, -11.93, 53.59, 2, 0)
	MovementLoopAddLocation(NPC, 20.33, -14.35, 46.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.23, -13.65, 39.86, 2, 0)
end


