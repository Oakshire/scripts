--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425517.lua
	Script Purpose	:	Waypoint Path for ashoalglider425517.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:17 
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
	MovementLoopAddLocation(NPC, 18.84, -12.96, 1.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20, -12.02, -3.92, 2, 0)
	MovementLoopAddLocation(NPC, 21.68, -11.97, -18.6, 2, 0)
	MovementLoopAddLocation(NPC, 24.33, -11.74, -24.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.36, -12.29, 1.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.29, -12.6, 7.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.88, -12.36, -32.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.38, -12.01, -15.6, 2, 0)
	MovementLoopAddLocation(NPC, 38.08, -11.48, -0.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.91, -11.91, -3.48, 2, 0)
	MovementLoopAddLocation(NPC, 30.72, -12.37, -7.75, 2, 0)
	MovementLoopAddLocation(NPC, 25.6, -12.37, -11.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.54, -13.57, -7.33, 2, 0)
	MovementLoopAddLocation(NPC, 26.29, -13.13, 0.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.36, -13, -0.37, 2, 0)
	MovementLoopAddLocation(NPC, 47.43, -12.28, 1.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.03, -12.94, -1.22, 2, 0)
	MovementLoopAddLocation(NPC, 37.76, -13.74, -10.78, 2, 0)
	MovementLoopAddLocation(NPC, 33.44, -14.5, -15.19, 2, 0)
	MovementLoopAddLocation(NPC, 25.98, -14.87, -22.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.67, -14.37, -16.07, 2, 0)
	MovementLoopAddLocation(NPC, 38.62, -13.95, -12.31, 2, 0)
	MovementLoopAddLocation(NPC, 55.34, -13.42, -4.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.71, -12.94, -9.68, 2, 0)
	MovementLoopAddLocation(NPC, 46.56, -12.43, -20.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.27, -12.86, -16.95, 2, 0)
	MovementLoopAddLocation(NPC, 38.5, -12.82, -12.52, 2, 0)
end

