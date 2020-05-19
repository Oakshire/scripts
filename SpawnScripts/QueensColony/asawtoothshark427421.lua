--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427421.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427421.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:32 
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
	MovementLoopAddLocation(NPC, 6.48, -11.8, -72.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.58, -12.24, -68.62, 2, 0)
	MovementLoopAddLocation(NPC, 1.75, -12.99, -64.7, 2, 0)
	MovementLoopAddLocation(NPC, 1.33, -13.5, -59.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.5, -12.86, -55.9, 2, 0)
	MovementLoopAddLocation(NPC, 13.44, -12.18, -52.44, 2, 0)
	MovementLoopAddLocation(NPC, 23.25, -11.68, -44.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.57, -11.82, -41.37, 2, 0)
	MovementLoopAddLocation(NPC, 4.42, -11.75, -35.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.28, -12.07, -26.19, 2, 0)
	MovementLoopAddLocation(NPC, 24.26, -14.71, -20.12, 2, 0)
	MovementLoopAddLocation(NPC, 29.68, -14.86, -20.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.92, -14.21, -25.69, 2, 0)
	MovementLoopAddLocation(NPC, 26.68, -13.54, -33.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.41, -12.01, -26.83, 2, 0)
	MovementLoopAddLocation(NPC, 1.88, -11.69, -21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.81, -12, -19.78, 2, 0)
	MovementLoopAddLocation(NPC, 27.45, -13.01, -20.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.76, -12.17, -39.42, 2, 0)
	MovementLoopAddLocation(NPC, 14.96, -12.14, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 12.53, -12.31, -55.9, 2, 0)
	MovementLoopAddLocation(NPC, 8.07, -11.55, -65.69, 2, 0)
end

