--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425765.lua
	Script Purpose	:	Waypoint Path for atriggerfish425765.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:34 
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
	MovementLoopAddLocation(NPC, -22.4, -11.41, -34.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.21, -11.85, 9.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.21, -12.16, 11.13, 2, 0)
	MovementLoopAddLocation(NPC, -23, -12.65, 12.68, 2, 0)
	MovementLoopAddLocation(NPC, -17.8, -13.44, 13.91, 2, 0)
	MovementLoopAddLocation(NPC, -14.77, -13.68, 14.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.96, -12.42, 10.54, 2, 0)
	MovementLoopAddLocation(NPC, -36.09, -10.36, 8.32, 2, 0)
	MovementLoopAddLocation(NPC, -45.67, -10.17, 6.89, 2, 0)
	MovementLoopAddLocation(NPC, -57.6, -10.47, 4.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.18, -10.32, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, -55.87, -10.42, -15.13, 2, 0)
	MovementLoopAddLocation(NPC, -53.39, -10.36, -28.9, 2, 0)
	MovementLoopAddLocation(NPC, -47.15, -10.3, -54.42, 2, 0)
	MovementLoopAddLocation(NPC, -46.13, -10.45, -60.87, 2, 0)
	MovementLoopAddLocation(NPC, -43.78, -10.38, -70.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.9, -10.69, -60.37, 2, 0)
	MovementLoopAddLocation(NPC, -30.94, -11.39, -44.24, 2, 0)
	MovementLoopAddLocation(NPC, -23.16, -12, -33.38, 2, 0)
	MovementLoopAddLocation(NPC, -17.88, -12.05, -27.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15, -12.34, -18.69, 2, 0)
	MovementLoopAddLocation(NPC, -17.7, -12.44, -1.33, 2, 0)
	MovementLoopAddLocation(NPC, -17.71, -13.66, 9.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.8, -12.58, 1.28, 2, 0)
	MovementLoopAddLocation(NPC, -13.82, -12.21, -4.47, 2, 0)
	MovementLoopAddLocation(NPC, -8.86, -11.99, -9.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.97, -12.57, -13.88, 2, 0)
	MovementLoopAddLocation(NPC, -13.83, -12.92, -15.98, 2, 0)
	MovementLoopAddLocation(NPC, -15.34, -13.03, -18.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.37, -13.02, -16.65, 2, 0)
	MovementLoopAddLocation(NPC, -12.98, -12.47, -11.9, 2, 0)
	MovementLoopAddLocation(NPC, -13.21, -11.85, 1.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.22, -11.55, -11.84, 2, 0)
	MovementLoopAddLocation(NPC, -29.63, -11.29, -13.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.8, -11.58, -17.49, 2, 0)
end

