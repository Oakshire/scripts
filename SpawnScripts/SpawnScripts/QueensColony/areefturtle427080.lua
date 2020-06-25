--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427080.lua
	Script Purpose	:	Waypoint Path for areefturtle427080.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:30 
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
	MovementLoopAddLocation(NPC, 10.68, -11.83, -36.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.18, -12.7, -34.89, 2, 0)
	MovementLoopAddLocation(NPC, 21.42, -13.03, -32.02, 2, 0)
	MovementLoopAddLocation(NPC, 26.75, -12.89, -29.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.8, -13.13, -0.35, 2, 0)
	MovementLoopAddLocation(NPC, 26.92, -12.89, 10.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.56, -13.23, -14.11, 2, 0)
	MovementLoopAddLocation(NPC, 42.04, -12.93, -21.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.17, -11.75, -12.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.26, -12.6, -14.59, 2, 0)
	MovementLoopAddLocation(NPC, 24.28, -14.27, -21.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.36, -13.72, -25.95, 2, 0)
	MovementLoopAddLocation(NPC, 28.27, -12.61, -31.26, 2, 0)
	MovementLoopAddLocation(NPC, 30.25, -12.39, -34.91, 2, 0)
	MovementLoopAddLocation(NPC, 35.02, -11.45, -42.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.26, -11.71, -41.15, 2, 0)
	MovementLoopAddLocation(NPC, 24.2, -11.98, -40.11, 2, 0)
end


