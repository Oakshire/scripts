--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425548.lua
	Script Purpose	:	Waypoint Path for ashoalglider425548.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:52:52 
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
	MovementLoopAddLocation(NPC, -86.52, -11.47, -5.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.48, -10.6, -13.22, 2, 0)
	MovementLoopAddLocation(NPC, -50.86, -10.6, -28.2, 2, 0)
	MovementLoopAddLocation(NPC, -41.79, -10.6, -34.27, 2, 0)
	MovementLoopAddLocation(NPC, -29.71, -10.6, -44.33, 2, 0)
	MovementLoopAddLocation(NPC, -17.89, -10.6, -50.54, 2, 0)
	MovementLoopAddLocation(NPC, -13.34, -10.6, -56.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.81, -11.06, -49.46, 2, 0)
	MovementLoopAddLocation(NPC, -37.96, -11.14, -45.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.52, -10.6, -33.93, 2, 0)
	MovementLoopAddLocation(NPC, -32.96, -11.27, -27.03, 2, 0)
	MovementLoopAddLocation(NPC, -30.49, -11, -16.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.86, -10.6, -17.77, 2, 0)
	MovementLoopAddLocation(NPC, -60.01, -10.6, -11.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.02, -10.6, -12.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.75, -10.98, -12.61, 2, 0)
	MovementLoopAddLocation(NPC, -14.32, -11.81, -10.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.19, -11.64, -27.44, 2, 0)
	MovementLoopAddLocation(NPC, -30.47, -11.33, -38.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.94, -11.07, -50.18, 2, 0)
	MovementLoopAddLocation(NPC, -12.83, -10.6, -57.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.34, -10.6, -55.16, 2, 0)
	MovementLoopAddLocation(NPC, -44.52, -10.6, -40.15, 2, 0)
	MovementLoopAddLocation(NPC, -71.45, -10.6, -17.24, 2, 0)
	MovementLoopAddLocation(NPC, -82.13, -11.15, -10.89, 2, 0)
end

