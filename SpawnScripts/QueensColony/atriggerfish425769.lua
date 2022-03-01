--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425769.lua
	Script Purpose	:	Waypoint Path for atriggerfish425769.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:04 
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
	MovementLoopAddLocation(NPC, -25.71, -12.63, -25.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.78, -10.22, -43.09, 2, 0)
	MovementLoopAddLocation(NPC, -43.72, -10.45, -53.25, 2, 0)
	MovementLoopAddLocation(NPC, -46.35, -11.29, -59.21, 2, 0)
	MovementLoopAddLocation(NPC, -45.48, -11.75, -63.56, 2, 0)
	MovementLoopAddLocation(NPC, -45.6, -11.89, -66.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.46, -11.5, -56.44, 2, 0)
	MovementLoopAddLocation(NPC, -37.24, -11.49, -49.11, 2, 0)
	MovementLoopAddLocation(NPC, -28.78, -11.67, -37.37, 2, 0)
	MovementLoopAddLocation(NPC, -22.46, -12.58, -27.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.48, -11.78, -18.89, 2, 0)
	MovementLoopAddLocation(NPC, -10.46, -11.63, -15.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.04, -12.37, -36.21, 2, 0)
	MovementLoopAddLocation(NPC, -32.42, -12.16, -40.75, 2, 0)
	MovementLoopAddLocation(NPC, -33.09, -11.57, -41.95, 2, 0)
	MovementLoopAddLocation(NPC, -35.19, -11.5, -43.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.98, -11.32, -51.68, 2, 0)
	MovementLoopAddLocation(NPC, -44.64, -11.4, -56.29, 2, 0)
	MovementLoopAddLocation(NPC, -50.67, -11.76, -58.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.92, -10.3, -57.08, 2, 0)
	MovementLoopAddLocation(NPC, -25.06, -10.4, -56.34, 2, 0)
	MovementLoopAddLocation(NPC, -15.21, -11.09, -57.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.94, -11.26, -50.57, 2, 0)
	MovementLoopAddLocation(NPC, -17.47, -12, -46.57, 2, 0)
	MovementLoopAddLocation(NPC, -18.87, -12.8, -43.45, 2, 0)
	MovementLoopAddLocation(NPC, -20.44, -13.25, -42.75, 2, 0)
	MovementLoopAddLocation(NPC, -21.74, -13.34, -43.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.77, -12.21, -37.46, 2, 0)
	MovementLoopAddLocation(NPC, -32.12, -12.31, -36.22, 2, 0)
	MovementLoopAddLocation(NPC, -37.79, -12.1, -34.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.51, -11.93, -27.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.16, -11.47, -24.94, 2, 0)
	MovementLoopAddLocation(NPC, -36.24, -11.18, -23.61, 2, 0)
	MovementLoopAddLocation(NPC, -47.9, -10.24, -17.92, 2, 0)
	MovementLoopAddLocation(NPC, -55.06, -10.67, -11.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.23, -10.24, -16.47, 2, 0)
	MovementLoopAddLocation(NPC, -38.38, -10.44, -20.13, 2, 0)
	MovementLoopAddLocation(NPC, -28.73, -12, -22.77, 2, 0)
	MovementLoopAddLocation(NPC, -25.91, -12.7, -23.94, 2, 0)
end


