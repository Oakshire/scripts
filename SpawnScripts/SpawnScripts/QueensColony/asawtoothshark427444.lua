--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427444.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427444.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:55 
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
	MovementLoopAddLocation(NPC, 6.4, -12.54, 30.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.38, -12.98, 25.79, 2, 0)
	MovementLoopAddLocation(NPC, 32.41, -13.27, 18.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.1, -11.11, 30.54, 2, 0)
	MovementLoopAddLocation(NPC, 52.28, -10.97, 37.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.98, -11.57, 29.91, 2, 0)
	MovementLoopAddLocation(NPC, 34.28, -13.53, 22.39, 2, 0)
	MovementLoopAddLocation(NPC, 29.23, -13.74, 20.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.18, -12.11, 27.69, 2, 0)
	MovementLoopAddLocation(NPC, 46.32, -11.27, 41.34, 2, 0)
	MovementLoopAddLocation(NPC, 52.06, -12.64, 48.85, 2, 0)
	MovementLoopAddLocation(NPC, 56.38, -12.94, 52.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.19, -11.98, 46.87, 2, 0)
	MovementLoopAddLocation(NPC, 81.39, -12.49, 43.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.73, -11.01, 40.31, 2, 0)
	MovementLoopAddLocation(NPC, 64.89, -10.56, 41.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.96, -10.59, 46.18, 2, 0)
	MovementLoopAddLocation(NPC, 53.09, -10.8, 54.92, 2, 0)
	MovementLoopAddLocation(NPC, 39.14, -11.02, 73.94, 2, 0)
	MovementLoopAddLocation(NPC, 38.06, -10.99, 84.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.65, -10.58, 63.22, 2, 0)
	MovementLoopAddLocation(NPC, 6.18, -12.35, 53.85, 2, 0)
	MovementLoopAddLocation(NPC, -0.35, -12.71, 50.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.82, -12.45, 38.09, 2, math.random(10, 20))
end


