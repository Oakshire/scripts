--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427381.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427381.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:27 
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
	MovementLoopAddLocation(NPC, -15.58, -11.82, -8.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.68, -12.04, -1.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.02, -12.6, 5.86, 2, 0)
	MovementLoopAddLocation(NPC, -16.98, -13.35, 13.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.7, -12.44, 1.55, 2, 0)
	MovementLoopAddLocation(NPC, -14.24, -12, -9.27, 2, 0)
	MovementLoopAddLocation(NPC, -23.17, -11.62, -25.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.76, -11.44, -27.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.8, -10.98, -34.07, 2, 0)
	MovementLoopAddLocation(NPC, -44.81, -10.7, -36.4, 2, 0)
	MovementLoopAddLocation(NPC, -58.9, -10.7, -46.57, 2, 0)
	MovementLoopAddLocation(NPC, -65.97, -11.04, -53.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.01, -11.03, -53.38, 2, 0)
	MovementLoopAddLocation(NPC, -40.61, -10.62, -55.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.75, -10.7, -35.06, 2, 0)
	MovementLoopAddLocation(NPC, -54.22, -10.7, -24.8, 2, 0)
	MovementLoopAddLocation(NPC, -56.03, -10.7, -13.8, 2, 0)
	MovementLoopAddLocation(NPC, -73.8, -10.7, -7.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.75, -10.7, 4.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -79.36, -10.7, -2.6, 2, 0)
	MovementLoopAddLocation(NPC, -70.53, -10.7, -23.57, 2, 0)
	MovementLoopAddLocation(NPC, -61.87, -10.7, -42.64, 2, 0)
	MovementLoopAddLocation(NPC, -53.59, -10.7, -51.19, 2, 0)
	MovementLoopAddLocation(NPC, -43.86, -11.1, -63.96, 2, 0)
	MovementLoopAddLocation(NPC, -35.16, -11.21, -72.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.85, -11.4, -62.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.16, -10.7, -56.95, 2, 0)
	MovementLoopAddLocation(NPC, -29.52, -10.66, -52.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.93, -10.7, -37.32, 2, 0)
	MovementLoopAddLocation(NPC, -22.81, -11.36, -25.46, 2, 0)
end
