--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428433.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428433.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:07 
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
	MovementLoopAddLocation(NPC, -89.34, -11.76, 10.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.87, -10.6, 2.83, 2, 0)
	MovementLoopAddLocation(NPC, -70.79, -10.6, -0.49, 2, 0)
	MovementLoopAddLocation(NPC, -62.48, -10.6, -6.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -65.05, -10.6, -5.81, 2, 0)
	MovementLoopAddLocation(NPC, -71.25, -10.6, -6.79, 2, 0)
	MovementLoopAddLocation(NPC, -76.82, -10.6, -12.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.41, -10.4, -14.73, 2, 0)
	MovementLoopAddLocation(NPC, -72.48, -10.4, -18.15, 2, 0)
	MovementLoopAddLocation(NPC, -59.87, -10.5, -22.82, 2, 0)
	MovementLoopAddLocation(NPC, -50.19, -10.6, -25.39, 2, 0)
	MovementLoopAddLocation(NPC, -42.64, -10.6, -29.69, 2, 0)
	MovementLoopAddLocation(NPC, -30.71, -10.6, -33.31, 2, 0)
	MovementLoopAddLocation(NPC, -19.73, -10.65, -37.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.23, -11.09, -42.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23, -11.96, -34.79, 2, 0)
	MovementLoopAddLocation(NPC, -17.93, -11.83, -25.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.63, -11.41, -32.98, 2, 0)
	MovementLoopAddLocation(NPC, -16.82, -11.22, -44.24, 2, 0)
	MovementLoopAddLocation(NPC, -15.53, -11.01, -50.66, 2, 0)
	MovementLoopAddLocation(NPC, -13.17, -10.6, -57.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.55, -10.6, -56.38, 2, 0)
	MovementLoopAddLocation(NPC, -20.7, -10.6, -52.46, 2, 0)
	MovementLoopAddLocation(NPC, -35.81, -10.6, -46.16, 2, 0)
	MovementLoopAddLocation(NPC, -41.83, -10.6, -42.64, 2, 0)
	MovementLoopAddLocation(NPC, -64.2, -10.6, -40.58, 2, 0)
	MovementLoopAddLocation(NPC, -69.71, -10.6, -34.88, 2, 0)
	MovementLoopAddLocation(NPC, -68.68, -10.6, -26.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.31, -10.6, -20.42, 2, 0)
	MovementLoopAddLocation(NPC, -87.6, -11.48, -14.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.08, -11.58, 0.43, 2, 0)
	MovementLoopAddLocation(NPC, -83.94, -11.74, 12.17, 2, 0)
	MovementLoopAddLocation(NPC, -86.29, -11.63, 16.14, 2, math.random(10, 20))
end
