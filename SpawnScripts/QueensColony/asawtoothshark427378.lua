--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427378.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427378.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:21 
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
        MovementLoopAddLocation(NPC, -20.27, -11.97, -46.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.95, -12.15, -43.92, 2, 0)
	MovementLoopAddLocation(NPC, 2.09, -12.19, -44.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.01, -11.97, -46.72, 2, 0)
	MovementLoopAddLocation(NPC, -26.67, -10.96, -48.83, 2, 0)
	MovementLoopAddLocation(NPC, -35.48, -10.61, -53.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.56, -10.62, -34.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.6, -10.7, -39.59, 2, 0)
	MovementLoopAddLocation(NPC, -51.88, -10.7, -56.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.46, -10.7, -46.83, 2, 0)
	MovementLoopAddLocation(NPC, -71.64, -10.7, -28.22, 2, 0)
	MovementLoopAddLocation(NPC, -76.1, -10.7, -18.23, 2, 0)
	MovementLoopAddLocation(NPC, -81.17, -11.04, -10.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.15, -11.65, -17.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.57, -11.88, 1.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -80.88, -11.07, -7.75, 2, 0)
	MovementLoopAddLocation(NPC, -76.01, -10.59, -12.49, 2, 0)
	MovementLoopAddLocation(NPC, -68.28, -10.7, -16.6, 2, 0)
	MovementLoopAddLocation(NPC, -57.35, -10.7, -16.41, 2, 0)
	MovementLoopAddLocation(NPC, -43.1, -10.7, -23.29, 2, 0)
	MovementLoopAddLocation(NPC, -12.93, -10.7, -56.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.34, -11.78, -59.85, 2, 0)
	MovementLoopAddLocation(NPC, 2.54, -12.05, -67.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9, -10.7, -68.61, 2, 0)
	MovementLoopAddLocation(NPC, -19.46, -10.7, -78.51, 2, 0)
	MovementLoopAddLocation(NPC, -22.5, -11.15, -83.8, 2, 0)
	MovementLoopAddLocation(NPC, -29.85, -11.64, -86.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.35, -10.97, -83.56, 2, 0)
	MovementLoopAddLocation(NPC, -25, -10.5, -78.6, 2, 0)
	MovementLoopAddLocation(NPC, -21.6, -10.5, -54.98, 2, 0)
	MovementLoopAddLocation(NPC, -19.54, -11.81, -45.33, 2, 0)
	MovementLoopAddLocation(NPC, -21.2, -12.41, -40.06, 2, math.random(10, 20))
end

