--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425505.lua
	Script Purpose	:	Waypoint Path for ashoalglider425505.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:36 
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
	MovementLoopAddLocation(NPC, 1.08, -11.44, -31.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.74, -11.58, -28.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.98, -11.75, -22.27, 2, 0)
	MovementLoopAddLocation(NPC, 41.06, -11.45, -16.58, 2, 0)
	MovementLoopAddLocation(NPC, 45.6, -11.55, -13.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.62, -11.93, -14.46, 2, 0)
	MovementLoopAddLocation(NPC, 60.7, -11.94, -15.24, 2, 0)
	MovementLoopAddLocation(NPC, 70.37, -11.39, -18.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.09, -10.7, -18.94, 2, 0)
	MovementLoopAddLocation(NPC, 59.39, -10.7, -20.41, 2, 0)
	MovementLoopAddLocation(NPC, 49.18, -10.7, -27.9, 2, 0)
	MovementLoopAddLocation(NPC, 37.77, -11.15, -43.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.39, -10.7, -46.3, 2, 0)
	MovementLoopAddLocation(NPC, 24.83, -10.7, -47.16, 2, 0)
	MovementLoopAddLocation(NPC, 6.96, -12.51, -59.23, 2, 0)
	MovementLoopAddLocation(NPC, 4.6, -12.49, -63.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.22, -11.87, -52.79, 2, 0)
	MovementLoopAddLocation(NPC, 15.26, -11.71, -47.34, 2, 0)
	MovementLoopAddLocation(NPC, 17.9, -12.04, -42.06, 2, 0)
	MovementLoopAddLocation(NPC, 24.64, -12.94, -33.47, 2, 0)
	MovementLoopAddLocation(NPC, 31.54, -12.44, -30.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.75, -12.33, -33.96, 2, 0)
	MovementLoopAddLocation(NPC, 24.21, -11.38, -37.63, 2, 0)
	MovementLoopAddLocation(NPC, 15.62, -11.59, -48.73, 2, 0)
	MovementLoopAddLocation(NPC, 8.21, -11.48, -62.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.52, -11.59, -68.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.7, -11.73, -55.35, 2, 0)
end

