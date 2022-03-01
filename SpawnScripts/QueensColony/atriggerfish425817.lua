--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425817.lua
	Script Purpose	:	Waypoint Path for atriggerfish425817.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:54 
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
	MovementLoopAddLocation(NPC, -18.04, -14.98, 30.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.94, -13.66, 30.09, 2, 0)
	MovementLoopAddLocation(NPC, 35.69, -12.47, 27.54, 2, 0)
	MovementLoopAddLocation(NPC, 40.5, -12.32, 27.04, 2, 0)
	MovementLoopAddLocation(NPC, 44.98, -11.88, 27.01, 2, 0)
	MovementLoopAddLocation(NPC, 47.34, -11.26, 27.33, 2, 0)
	MovementLoopAddLocation(NPC, 49.09, -11.06, 28.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.74, -11.67, 21.98, 2, 0)
	MovementLoopAddLocation(NPC, 46.02, -12.95, 11.72, 2, 0)
	MovementLoopAddLocation(NPC, 47.31, -13.05, 8.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.5, -13.65, 26.65, 2, 0)
	MovementLoopAddLocation(NPC, 22.33, -13.84, 43.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.62, -14.07, 42.59, 2, 0)
	MovementLoopAddLocation(NPC, 15.79, -14.04, 41.53, 2, 0)
	MovementLoopAddLocation(NPC, -0.54, -13.94, 36.76, 2, 0)
	MovementLoopAddLocation(NPC, -8.75, -14.39, 35, 2, 0)
	MovementLoopAddLocation(NPC, -12.11, -15.04, 33.48, 2, 0)
	MovementLoopAddLocation(NPC, -13.55, -15, 31.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.95, -13.19, 30.45, 2, 0)
	MovementLoopAddLocation(NPC, -5.92, -12.48, 30.49, 2, 0)
	MovementLoopAddLocation(NPC, -4.32, -12.4, 31.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.48, -12.87, 32.36, 2, 0)
	MovementLoopAddLocation(NPC, 7.33, -13.26, 34.11, 2, 0)
	MovementLoopAddLocation(NPC, 10.77, -13.34, 36.32, 2, 0)
	MovementLoopAddLocation(NPC, 14.97, -13.42, 37.18, 2, 0)
	MovementLoopAddLocation(NPC, 26.01, -13.79, 40.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.73, -13.47, 32.63, 2, 0)
	MovementLoopAddLocation(NPC, 16.12, -12.63, 31.96, 2, 0)
	MovementLoopAddLocation(NPC, 16.05, -14.16, 30.15, 2, 0)
	MovementLoopAddLocation(NPC, 12.06, -13.92, 24.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.78, -14.06, 28.13, 2, 0)
	MovementLoopAddLocation(NPC, -3.42, -14.08, 29.63, 2, 0)
	MovementLoopAddLocation(NPC, -13.58, -14.82, 29.68, 2, 0)
end

