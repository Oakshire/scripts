--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425775.lua
	Script Purpose	:	Waypoint Path for atriggerfish425775.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:20 
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
	MovementLoopAddLocation(NPC, -25.35, -12.52, -40.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.21, -12.27, -24.66, 2, 0)
	MovementLoopAddLocation(NPC, -24.37, -12.05, -16.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.67, -12.17, -21.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.96, -10.99, -53.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.6, -11.46, -53.75, 2, 0)
	MovementLoopAddLocation(NPC, -62.46, -11.92, -53.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -60.21, -11.4, -53.19, 2, 0)
	MovementLoopAddLocation(NPC, -53.97, -10.46, -49.47, 2, 0)
	MovementLoopAddLocation(NPC, -40.46, -10.57, -36.09, 2, 0)
	MovementLoopAddLocation(NPC, -38.83, -11.59, -34.16, 2, 0)
	MovementLoopAddLocation(NPC, -37.59, -11.93, -30.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.72, -11.95, -24.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.51, -11.48, -26.19, 2, 0)
	MovementLoopAddLocation(NPC, -20.17, -11.92, -28.28, 2, 0)
	MovementLoopAddLocation(NPC, -17.98, -11.97, -28.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.16, -11.04, -44.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.35, -11.27, -43.78, 2, 0)
	MovementLoopAddLocation(NPC, -40.37, -11.42, -42.12, 2, 0)
	MovementLoopAddLocation(NPC, -20.61, -11.89, -34.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.85, -11.73, -30.54, 2, 0)
	MovementLoopAddLocation(NPC, -26.96, -11.53, -26.33, 2, 0)
	MovementLoopAddLocation(NPC, -31.7, -11.38, -22.03, 2, 0)
	MovementLoopAddLocation(NPC, -37.8, -10.98, -15.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.92, -10.32, -22.54, 2, 0)
	MovementLoopAddLocation(NPC, -37.23, -11.14, -33.81, 2, 0)
	MovementLoopAddLocation(NPC, -36.68, -12.06, -37.21, 2, 0)
	MovementLoopAddLocation(NPC, -35.21, -12.59, -40.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.43, -11.54, -47.3, 2, 0)
	MovementLoopAddLocation(NPC, -37.02, -11.01, -57.1, 2, 0)
	MovementLoopAddLocation(NPC, -39.41, -11.11, -66.09, 2, 0)
	MovementLoopAddLocation(NPC, -40.07, -10.99, -76.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.93, -10.3, -68.49, 2, 0)
	MovementLoopAddLocation(NPC, -35.28, -10.37, -59.23, 2, 0)
	MovementLoopAddLocation(NPC, -32.7, -11.06, -53.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.43, -12.3, -43.11, 2, 0)
	MovementLoopAddLocation(NPC, -29.86, -12.53, -38.89, 2, math.random(10, 20))
end
