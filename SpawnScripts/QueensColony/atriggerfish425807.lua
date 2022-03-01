--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425807.lua
	Script Purpose	:	Waypoint Path for atriggerfish425807.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:16 
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
	MovementLoopAddLocation(NPC, 6.87, -11.03, -84.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.57, -11.01, -80.2, 2, 0)
	MovementLoopAddLocation(NPC, 9.92, -11.18, -66.31, 2, 0)
	MovementLoopAddLocation(NPC, 10.41, -11.68, -58.15, 2, 0)
	MovementLoopAddLocation(NPC, 10.57, -12.04, -50.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.87, -12.97, -31.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.98, -12.09, -36.13, 2, 0)
	MovementLoopAddLocation(NPC, 1.98, -11.71, -46, 2, 0)
	MovementLoopAddLocation(NPC, -0.3, -11.62, -48.8, 2, 0)
	MovementLoopAddLocation(NPC, -6.7, -11.96, -53.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.67, -11.85, -57.01, 2, 0)
	MovementLoopAddLocation(NPC, -1.8, -11.63, -64.38, 2, 0)
	MovementLoopAddLocation(NPC, 0.12, -11.21, -68.45, 2, 0)
	MovementLoopAddLocation(NPC, 1.99, -10.22, -71.86, 2, 0)
	MovementLoopAddLocation(NPC, 7.86, -11.04, -85.37, 2, 0)
	MovementLoopAddLocation(NPC, 8.29, -11.86, -90.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.85, -12.01, -87.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.47, -10.57, -83.71, 2, 0)
	MovementLoopAddLocation(NPC, 1.94, -10.43, -71.68, 2, 0)
	MovementLoopAddLocation(NPC, 0.52, -11.64, -68.34, 2, 0)
	MovementLoopAddLocation(NPC, 0.36, -12.82, -66.41, 2, 0)
	MovementLoopAddLocation(NPC, 2.02, -13.1, -64.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.76, -12.72, -55.86, 2, 0)
	MovementLoopAddLocation(NPC, 7.34, -12.44, -50.12, 2, 0)
	MovementLoopAddLocation(NPC, 11.43, -12.04, -38.94, 2, 0)
	MovementLoopAddLocation(NPC, 14.13, -12.03, -31.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.45, -12.05, -47.14, 2, 0)
	MovementLoopAddLocation(NPC, 7.35, -12.23, -51.8, 2, 0)
	MovementLoopAddLocation(NPC, 4.65, -13.63, -59.66, 2, 0)
	MovementLoopAddLocation(NPC, 1.94, -13.89, -62.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.77, -12.68, -67.65, 2, 0)
	MovementLoopAddLocation(NPC, 7.15, -11.59, -76.65, 2, 0)
	MovementLoopAddLocation(NPC, 7.83, -11.08, -81.13, 2, 0)
end

