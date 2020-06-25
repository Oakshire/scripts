--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425600.lua
	Script Purpose	:	Waypoint Path for ashoalglider425600.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:37 
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
	MovementLoopAddLocation(NPC, -83.23, -10.7, 0.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -73.61, -10.7, -3.9, 2, 0)
	MovementLoopAddLocation(NPC, -65.01, -10.7, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, -60.12, -10.7, -5.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.22, -10.7, 5.51, 2, 0)
	MovementLoopAddLocation(NPC, -21.82, -11.21, 8.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.07, -11.27, 0.42, 2, 0)
	MovementLoopAddLocation(NPC, -23.16, -11.33, -17.49, 2, 0)
	MovementLoopAddLocation(NPC, -20.42, -11.48, -21.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.59, -11.73, -32.66, 2, 0)
	MovementLoopAddLocation(NPC, -27.92, -11.45, -47.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.16, -11.31, -33.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.04, -11.54, -41.89, 2, 0)
	MovementLoopAddLocation(NPC, -32.84, -11.44, -47.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.54, -10.7, -51.97, 2, 0)
	MovementLoopAddLocation(NPC, -32.26, -10.7, -65.19, 2, 0)
	MovementLoopAddLocation(NPC, -34.69, -10.7, -70.99, 2, 0)
	MovementLoopAddLocation(NPC, -33.92, -11.82, -78.75, 2, 0)
	MovementLoopAddLocation(NPC, -30.53, -12.25, -87.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.69, -10.7, -69.84, 2, 0)
	MovementLoopAddLocation(NPC, -47.73, -10.7, -52.69, 2, 0)
	MovementLoopAddLocation(NPC, -60.03, -10.7, -38.15, 2, 0)
	MovementLoopAddLocation(NPC, -71.86, -10.7, -19.79, 2, 0)
	MovementLoopAddLocation(NPC, -82.3, -10.7, -2.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -90.77, -11.19, 6.74, 2, math.random(10, 20))
end

