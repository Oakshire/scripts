--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426840.lua
	Script Purpose	:	Waypoint Path for atriggerfish426840.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:01 
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
	MovementLoopAddLocation(NPC, -44.07, -11.03, -54.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.13, -10.26, -55.84, 2, 0)
	MovementLoopAddLocation(NPC, -7.42, -11.41, -53.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.98, -10.52, -51.71, 2, 0)
	MovementLoopAddLocation(NPC, -43.6, -10.95, -34.95, 2, 0)
	MovementLoopAddLocation(NPC, -51.93, -10.44, -25.74, 2, 0)
	MovementLoopAddLocation(NPC, -53.73, -10.42, -23.13, 2, 0)
	MovementLoopAddLocation(NPC, -62.01, -10.2, -16.41, 2, 0)
	MovementLoopAddLocation(NPC, -67.28, -10.21, -8.98, 2, 0)
	MovementLoopAddLocation(NPC, -74.14, -10.19, -3.17, 2, 0)
	MovementLoopAddLocation(NPC, -79.36, -11.12, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, -84.06, -11.32, 5.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.27, -10.53, 1.46, 2, 0)
	MovementLoopAddLocation(NPC, -69.29, -10.47, 1.46, 2, 0)
	MovementLoopAddLocation(NPC, -61.71, -10.41, 0.59, 2, 0)
	MovementLoopAddLocation(NPC, -48.89, -10.47, -4.68, 2, 0)
	MovementLoopAddLocation(NPC, -40.11, -10.41, -8.96, 2, 0)
	MovementLoopAddLocation(NPC, -27.99, -10.58, -11.52, 2, 0)
	MovementLoopAddLocation(NPC, -22.75, -11.58, -14.58, 2, 0)
	MovementLoopAddLocation(NPC, -20.12, -11.88, -15.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.2, -12.3, -17.65, 2, 0)
	MovementLoopAddLocation(NPC, -7.91, -12.02, -21.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.32, -11.36, -33.32, 2, 0)
	MovementLoopAddLocation(NPC, -20.55, -11.57, -37.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.15, -11.48, -42.71, 2, 0)
	MovementLoopAddLocation(NPC, -15.8, -11.37, -49.43, 2, 0)
	MovementLoopAddLocation(NPC, -5.57, -11.94, -66.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.01, -11.55, -58.07, 2, 0)
	MovementLoopAddLocation(NPC, -17.53, -11.47, -37.05, 2, 0)
	MovementLoopAddLocation(NPC, -21.21, -12.05, -33.8, 2, 0)
	MovementLoopAddLocation(NPC, -22.87, -12.37, -31.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.45, -12.05, -32.31, 2, 0)
	MovementLoopAddLocation(NPC, -3.27, -11.97, -28.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.67, -11.57, -24.41, 2, 0)
	MovementLoopAddLocation(NPC, -21.88, -11.74, -21.25, 2, 0)
	MovementLoopAddLocation(NPC, -25.44, -12, -18.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.87, -11.58, -32.99, 2, 0)
	MovementLoopAddLocation(NPC, -12.64, -11.97, -38.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.71, -12.16, -37.58, 2, 0)
	MovementLoopAddLocation(NPC, -21.23, -12.35, -36.84, 2, 0)
	MovementLoopAddLocation(NPC, -33.42, -11.99, -31.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.53, -12.35, -36.02, 2, 0)
	MovementLoopAddLocation(NPC, -34.76, -12.42, -41.25, 2, 0)
	MovementLoopAddLocation(NPC, -37.17, -11.61, -48.17, 2, 0)
end

