--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427089.lua
	Script Purpose	:	Waypoint Path for areefturtle427089.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:03 
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
	MovementLoopAddLocation(NPC, 28.38, -10.2, -3.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.21, -14.22, -12.6, 2, 0)
	MovementLoopAddLocation(NPC, 24.84, -14.24, -21.65, 2, 0)
	MovementLoopAddLocation(NPC, 23.81, -13.44, -26.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.15, -12.76, -29.02, 2, 0)
	MovementLoopAddLocation(NPC, 32.17, -10.94, -34.4, 2, 0)
	MovementLoopAddLocation(NPC, 38.77, -10.41, -40.5, 2, 0)
	MovementLoopAddLocation(NPC, 45.41, -11.59, -46.96, 2, 0)
	MovementLoopAddLocation(NPC, 46.41, -11.86, -48.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.81, -11.22, -41.18, 2, 0)
	MovementLoopAddLocation(NPC, 40.22, -11.41, -31.42, 2, 0)
	MovementLoopAddLocation(NPC, 37.99, -12.79, -20.61, 2, 0)
	MovementLoopAddLocation(NPC, 37.51, -12.97, -17, 2, 0)
	MovementLoopAddLocation(NPC, 36.48, -12.99, -13.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.04, -12.83, -9.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.87, -11.58, -3.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.62, -11.97, -3.51, 2, 0)
	MovementLoopAddLocation(NPC, 20.95, -13.17, 1.7, 2, 0)
	MovementLoopAddLocation(NPC, 17.08, -13.91, 2.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.64, -13.54, 0.16, 2, 0)
	MovementLoopAddLocation(NPC, 24.05, -13.39, -6.06, 2, 0)
	MovementLoopAddLocation(NPC, 29.16, -14.81, -15.88, 2, 0)
	MovementLoopAddLocation(NPC, 33.13, -15.2, -19.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.1, -13.36, -15.92, 2, 0)
	MovementLoopAddLocation(NPC, 40.17, -12.59, -11.83, 2, 0)
	MovementLoopAddLocation(NPC, 44.6, -12.18, -10.21, 2, 0)
	MovementLoopAddLocation(NPC, 52.39, -11.99, -9.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.98, -12.29, -9.17, 2, 0)
	MovementLoopAddLocation(NPC, 35.04, -10.2, -7.52, 2, 0)
end
