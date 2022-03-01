--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425770.lua
	Script Purpose	:	Waypoint Path for atriggerfish425770.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:28 
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
	MovementLoopAddLocation(NPC, -55.07, -11.94, 1.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.88, -10.98, -1.24, 2, 0)
	MovementLoopAddLocation(NPC, -66.83, -10.12, -2.46, 2, 0)
	MovementLoopAddLocation(NPC, -77.06, -10.52, -6.73, 2, 0)
	MovementLoopAddLocation(NPC, -79.65, -11.18, -9.7, 2, 0)
	MovementLoopAddLocation(NPC, -80.45, -11.22, -12.83, 2, 0)
	MovementLoopAddLocation(NPC, -79.96, -11.15, -15.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -74.11, -10.3, -19.21, 2, 0)
	MovementLoopAddLocation(NPC, -58.74, -10.2, -22.91, 2, 0)
	MovementLoopAddLocation(NPC, -55.42, -10.2, -24.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.86, -10.43, -20.42, 2, 0)
	MovementLoopAddLocation(NPC, -49.76, -10.33, -9.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.14, -10.29, -14.83, 2, 0)
	MovementLoopAddLocation(NPC, -32.33, -10.26, -47.91, 2, 0)
	MovementLoopAddLocation(NPC, -27.77, -11.12, -53.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.15, -10.42, -4.19, 2, 0)
	MovementLoopAddLocation(NPC, -35.58, -11.16, 12.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.51, -11.37, 14.97, 2, 0)
	MovementLoopAddLocation(NPC, -36.5, -11.87, 18.27, 2, 0)
	MovementLoopAddLocation(NPC, -37.55, -12.89, 24.64, 2, 0)
	MovementLoopAddLocation(NPC, -37.88, -13.73, 30.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.19, -11.75, 30.09, 2, 0)
	MovementLoopAddLocation(NPC, -46.88, -11.26, 27.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.56, -11.1, 23.72, 2, 0)
	MovementLoopAddLocation(NPC, -49.36, -10.46, 18.04, 2, 0)
	MovementLoopAddLocation(NPC, -50.26, -10.49, 14.33, 2, 0)
	MovementLoopAddLocation(NPC, -51.56, -10.2, 11.11, 2, 0)
	MovementLoopAddLocation(NPC, -53.76, -10.51, 5.17, 2, 0)
	MovementLoopAddLocation(NPC, -53.76, -11.4, -11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.89, -11.6, -5.54, 2, 0)
end
