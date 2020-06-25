--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427060.lua
	Script Purpose	:	Waypoint Path for areefturtle427060.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:54 
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
	MovementLoopAddLocation(NPC, 99.59, -12.67, -25.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.16, -12.22, -32.9, 2, 0)
	MovementLoopAddLocation(NPC, 86.03, -11.8, -41.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.08, -12.6, -36.99, 2, 0)
	MovementLoopAddLocation(NPC, 81.55, -12.85, -30.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.41, -12.5, -34.77, 2, 0)
	MovementLoopAddLocation(NPC, 75.63, -12.29, -44.71, 2, 0)
	MovementLoopAddLocation(NPC, 59.87, -11.78, -64.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.6, -11.89, -50.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.72, -11.75, -58.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.24, -11.82, -70.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.3, -11.9, -70.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.61, -11.96, -77.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.48, -11.21, -50.22, 2, 0)
	MovementLoopAddLocation(NPC, 77.15, -11.17, -43.94, 2, 0)
	MovementLoopAddLocation(NPC, 80.51, -11.19, -36.79, 2, 0)
	MovementLoopAddLocation(NPC, 94.4, -11.33, -21.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.73, -11.11, -10.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.98, -12.61, -23.59, 2, 0)
end


