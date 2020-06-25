--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425798.lua
	Script Purpose	:	Waypoint Path for atriggerfish425798.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:33 
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
	MovementLoopAddLocation(NPC, 25.41, -15.03, -26.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.29, -14.43, -24.48, 2, 0)
	MovementLoopAddLocation(NPC, 40.96, -12.26, -15.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.74, -12.53, -13.37, 2, 0)
	MovementLoopAddLocation(NPC, 63.51, -12.47, -14.09, 2, 0)
	MovementLoopAddLocation(NPC, 66.1, -11.93, -15.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.37, -12.4, -17.24, 2, 0)
	MovementLoopAddLocation(NPC, 46.51, -12.99, -20.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.31, -13.08, -24.51, 2, 0)
	MovementLoopAddLocation(NPC, 25.88, -11.14, -45.26, 2, 0)
	MovementLoopAddLocation(NPC, 12.23, -11.17, -65.63, 2, 0)
	MovementLoopAddLocation(NPC, 9.82, -11.36, -70.71, 2, 0)
	MovementLoopAddLocation(NPC, 6.84, -11.86, -73.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.64, -12.74, -67.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.47, -12.27, -64.3, 2, 0)
	MovementLoopAddLocation(NPC, 1.56, -12.39, -47.72, 2, 0)
	MovementLoopAddLocation(NPC, 1.25, -12.87, -44.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.41, -12.45, -41.5, 2, 0)
	MovementLoopAddLocation(NPC, 6, -12.38, -36.02, 2, 0)
	MovementLoopAddLocation(NPC, 16.05, -12.46, -23.98, 2, 0)
	MovementLoopAddLocation(NPC, 22.28, -13.8, -14.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.42, -12.46, -12.24, 2, 0)
	MovementLoopAddLocation(NPC, 53.08, -12, -12.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.93, -12.51, -14.12, 2, 0)
	MovementLoopAddLocation(NPC, 62.03, -13.39, -15.03, 2, 0)
	MovementLoopAddLocation(NPC, 64.44, -13.62, -14.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.41, -13.05, -18.77, 2, 0)
	MovementLoopAddLocation(NPC, 41.73, -13.23, -20.36, 2, 0)
	MovementLoopAddLocation(NPC, 31.2, -14.39, -24.88, 2, 0)
end

