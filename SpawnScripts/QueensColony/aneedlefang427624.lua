--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427624.lua
	Script Purpose	:	Waypoint Path for aneedlefang427624.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:58 
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
	MovementLoopAddLocation(NPC, 56.36, -12.19, 40.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.63, -11.76, 33.98, 2, 0)
	MovementLoopAddLocation(NPC, 58.75, -11.85, 14.48, 2, 0)
	MovementLoopAddLocation(NPC, 58.41, -13.47, 6.03, 2, 0)
	MovementLoopAddLocation(NPC, 59.96, -14.04, 1.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.17, -12.55, 7.01, 2, 0)
	MovementLoopAddLocation(NPC, 47.17, -12.97, 11.11, 2, 0)
	MovementLoopAddLocation(NPC, 39.32, -13.98, 15.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.28, -12.03, 27.33, 2, 0)
	MovementLoopAddLocation(NPC, 12.29, -12.04, 43.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.26, -12.15, 38.86, 2, 0)
	MovementLoopAddLocation(NPC, -2.94, -12.34, 36.01, 2, 0)
	MovementLoopAddLocation(NPC, -4.89, -12.57, 33.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.58, -12.57, 29.94, 2, 0)
	MovementLoopAddLocation(NPC, 22.91, -12.48, 28.02, 2, 0)
	MovementLoopAddLocation(NPC, 62.56, -10.32, 9.49, 2, 0)
	MovementLoopAddLocation(NPC, 70.35, -10.3, 7.18, 2, 0)
	MovementLoopAddLocation(NPC, 75.64, -10.3, 4.47, 2, 0)
	MovementLoopAddLocation(NPC, 89.75, -10.3, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, 95.94, -10.3, -5.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.2, -12.27, 13.93, 2, 0)
	MovementLoopAddLocation(NPC, 90.29, -12.96, 20.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.06, -12.13, 27.98, 2, 0)
	MovementLoopAddLocation(NPC, 83.43, -11.35, 33.9, 2, 0)
	MovementLoopAddLocation(NPC, 82.04, -11.63, 40.69, 2, 0)
	MovementLoopAddLocation(NPC, 78.69, -11.8, 47.59, 2, 0)
	MovementLoopAddLocation(NPC, 73.07, -11.96, 55.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.01, -11.06, 68.43, 2, 0)
	MovementLoopAddLocation(NPC, 59.58, -12.01, 81.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.55, -12.06, 76.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.07, -11.21, 60.91, 2, 0)
	MovementLoopAddLocation(NPC, 55.95, -11.25, 55.08, 2, 0)
end

