--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425766.lua
	Script Purpose	:	Waypoint Path for atriggerfish425766.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:02 
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
	MovementLoopAddLocation(NPC, -8.15, -11.93, -60.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.77, -11.25, -53.41, 2, 0)
	MovementLoopAddLocation(NPC, -29.96, -10.58, -43.73, 2, 0)
	MovementLoopAddLocation(NPC, -34.93, -11.69, -35.62, 2, 0)
	MovementLoopAddLocation(NPC, -38.65, -12.06, -34.01, 2, 0)
	MovementLoopAddLocation(NPC, -41.31, -12.08, -34.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.45, -12.25, -26.33, 2, 0)
	MovementLoopAddLocation(NPC, -21.68, -12.13, -23.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.49, -11.6, -30.51, 2, 0)
	MovementLoopAddLocation(NPC, -10.49, -11.64, -32.78, 2, 0)
	MovementLoopAddLocation(NPC, -2.76, -11.94, -34.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.02, -11.49, -37.18, 2, 0)
	MovementLoopAddLocation(NPC, -29.87, -12.31, -38.82, 2, 0)
	MovementLoopAddLocation(NPC, -39.16, -12.89, -41.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.93, -11.42, -49.33, 2, 0)
	MovementLoopAddLocation(NPC, -41.26, -11.29, -52.83, 2, 0)
	MovementLoopAddLocation(NPC, -44.6, -10.23, -67.68, 2, 0)
	MovementLoopAddLocation(NPC, -45.01, -10.2, -69.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.23, -10.44, -66.26, 2, 0)
	MovementLoopAddLocation(NPC, -38.87, -10.4, 8.94, 2, 0)
	MovementLoopAddLocation(NPC, -38.61, -11.91, 16.93, 2, 0)
	MovementLoopAddLocation(NPC, -38.03, -12.39, 20.37, 2, 0)
	MovementLoopAddLocation(NPC, -37.01, -12.61, 22.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.3, -13.16, 24.46, 2, 0)
	MovementLoopAddLocation(NPC, -38.78, -14.04, 27.51, 2, 0)
	MovementLoopAddLocation(NPC, -40.65, -13.87, 29.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.8, -13.93, 23.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.83, -12.98, 21.02, 2, 0)
	MovementLoopAddLocation(NPC, -27.72, -12.48, 18.45, 2, 0)
	MovementLoopAddLocation(NPC, -24.98, -11.76, 6.74, 2, 0)
	MovementLoopAddLocation(NPC, -24.09, -11.67, -3.53, 2, 0)
	MovementLoopAddLocation(NPC, -20.39, -12.05, -15.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.49, -11.59, -28.59, 2, 0)
	MovementLoopAddLocation(NPC, -22.14, -11.68, -36.29, 2, 0)
	MovementLoopAddLocation(NPC, -20.49, -11.96, -42.33, 2, 0)
	MovementLoopAddLocation(NPC, -20.26, -12.15, -45.48, 2, 0)
	MovementLoopAddLocation(NPC, -20.43, -11.96, -47.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.88, -11.96, -48.08, 2, 0)
	MovementLoopAddLocation(NPC, -17.17, -11.54, -49.44, 2, 0)
	MovementLoopAddLocation(NPC, -11.01, -11.47, -57.65, 2, 0)
	MovementLoopAddLocation(NPC, -2.19, -12.34, -61.01, 2, math.random(10, 20))
end

