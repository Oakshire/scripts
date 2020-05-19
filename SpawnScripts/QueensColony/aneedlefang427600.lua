--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427600.lua
	Script Purpose	:	Waypoint Path for needle_022_03.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:42 
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
	MovementLoopAddLocation(NPC, 40.56, -11.97, -31.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.04, -12, -37.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.59, -11.22, -35.19, 2, 0)
	MovementLoopAddLocation(NPC, 46.95, -11.85, -34.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.14, -11.69, -32.81, 2, 0)
	MovementLoopAddLocation(NPC, 34.32, -13.03, -25.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.73, -13.17, -23.98, 2, 0)
	MovementLoopAddLocation(NPC, 20.82, -13.59, -19.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.35, -14.42, -21.12, 2, 0)
	MovementLoopAddLocation(NPC, 34.42, -14.75, -23.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.08, -14.7, -16.15, 2, 0)
	MovementLoopAddLocation(NPC, 35.21, -14.07, -8.42, 2, 0)
	MovementLoopAddLocation(NPC, 37.76, -13.94, -3.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.59, -12.28, -8.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22, -12.06, -12.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.78, -11.98, -55.25, 2, 0)
	MovementLoopAddLocation(NPC, 3.86, -13.75, -61.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.42, -11.91, -70.79, 2, 0)
	MovementLoopAddLocation(NPC, 3.86, -11.97, -81.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.1, -11.73, -58.15, 2, 0)
	MovementLoopAddLocation(NPC, -2.27, -11.98, -51.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.87, -11.88, -50.85, 2, 0)
	MovementLoopAddLocation(NPC, 28.25, -11.86, -45.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.29, -11.74, -42.22, 2, 0)
end

