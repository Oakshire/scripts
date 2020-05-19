--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427417.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427417.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:00 
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
	MovementLoopAddLocation(NPC, 54.8, -12.12, -20.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.29, -13.3, -14.75, 2, 0)
	MovementLoopAddLocation(NPC, 36.21, -14.26, -8.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.03, -13.3, -26.47, 2, 0)
	MovementLoopAddLocation(NPC, 21.68, -12.44, -40.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.82, -12.04, -45.01, 2, 0)
	MovementLoopAddLocation(NPC, 6.68, -11.32, -55.52, 2, 0)
	MovementLoopAddLocation(NPC, -2.66, -12.71, -65.03, 2, 0)
	MovementLoopAddLocation(NPC, -2.69, -12.71, -65.029, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.19, -12.38, -64.83, 2, 0)
	MovementLoopAddLocation(NPC, -10.45, -11.46, -62.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.49, -12.35, -63.48, 2, 0)
	MovementLoopAddLocation(NPC, 14.61, -12.22, -59.52, 2, 0)
	MovementLoopAddLocation(NPC, 19.6, -11.75, -58.8, 2, 0)
	MovementLoopAddLocation(NPC, 19.69, -11.75, -58.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.2, -11.03, -54.41, 2, 0)
	MovementLoopAddLocation(NPC, 26.41, -10.96, -51.73, 2, 0)
	MovementLoopAddLocation(NPC, 31.43, -11.07, -49.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.65, -10.7, -43.85, 2, 0)
	MovementLoopAddLocation(NPC, 22.59, -10.7, -37.45, 2, 0)
	MovementLoopAddLocation(NPC, 19.18, -11.94, -23.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.83, -13.26, -20.07, 2, 0)
	MovementLoopAddLocation(NPC, 45.03, -13.21, -19.79, 2, 0)
	MovementLoopAddLocation(NPC, 60.4, -12.78, -16.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.91, -11.77, -10.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.08, -12.19, -14.83, 2, 0)
	MovementLoopAddLocation(NPC, 50.73, -12.23, -20.7, 2, 0)
	MovementLoopAddLocation(NPC, 40.6, -10.7, -39.9, 2, 0)
	MovementLoopAddLocation(NPC, 34.84, -10.7, -49.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.1, -11.03, -41.42, 2, 0)
	MovementLoopAddLocation(NPC, 44.34, -11.27, -35.43, 2, 0)
	MovementLoopAddLocation(NPC, 51.55, -11.97, -24.48, 2, 0)
end

