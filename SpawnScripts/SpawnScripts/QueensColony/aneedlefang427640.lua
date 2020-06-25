--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427640.lua
	Script Purpose	:	Waypoint Path for aneedlefang427640.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:36 
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
	MovementLoopAddLocation(NPC, 62.98, -12.12, 78.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.88, -11.84, 68.01, 2, 0)
	MovementLoopAddLocation(NPC, 60.91, -11.93, 55.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.04, -10.34, 66.67, 2, 0)
	MovementLoopAddLocation(NPC, 41.01, -10.3, 77.94, 2, 0)
	MovementLoopAddLocation(NPC, 32.91, -10.71, 85.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.77, -11.29, 90.53, 2, 0)
	MovementLoopAddLocation(NPC, 47.48, -11.8, 99.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.74, -10.77, 85.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83, -11.41, 53.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.28, -11.92, 39.68, 2, 0)
	MovementLoopAddLocation(NPC, 84.54, -12.14, 31.08, 2, 0)
	MovementLoopAddLocation(NPC, 82.01, -11.96, 22.81, 2, 0)
	MovementLoopAddLocation(NPC, 79.23, -12.82, 16.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.53, -13.21, 8.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.22, -13.03, 7.47, 2, 0)
	MovementLoopAddLocation(NPC, 59.09, -12.68, 5.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.48, -11.72, 18.99, 2, 0)
	MovementLoopAddLocation(NPC, 60.95, -11.85, 33.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.91, -10.57, 32.05, 2, 0)
	MovementLoopAddLocation(NPC, 40.57, -11.46, 30.78, 2, 0)
	MovementLoopAddLocation(NPC, 29.48, -12.08, 28.78, 2, 0)
	MovementLoopAddLocation(NPC, 22.56, -12.41, 28.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.18, -12.95, 36.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.61, -12.85, 44.59, 2, 0)
	MovementLoopAddLocation(NPC, 14.33, -12.68, 49.91, 2, 0)
	MovementLoopAddLocation(NPC, 26.81, -11.94, 58.93, 2, 0)
	MovementLoopAddLocation(NPC, 51, -11.03, 70.58, 2, 0)
end
