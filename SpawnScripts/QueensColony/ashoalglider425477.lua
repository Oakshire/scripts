--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425477.lua
	Script Purpose	:	Waypoint Path for ashoalglider425477.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:34 
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
	MovementLoopAddLocation(NPC, 99.61, -11.5, -41.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.31, -12.47, -23.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.78, -12.5, -23.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.38, -12.04, -41.88, 2, 0)
	MovementLoopAddLocation(NPC, 75.5, -11.72, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 73.62, -11.82, -51.02, 2, 0)
	MovementLoopAddLocation(NPC, 73.15, -11.62, -55.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.01, -11.96, -49.64, 2, 0)
	MovementLoopAddLocation(NPC, 78.47, -11.84, -43.47, 2, 0)
	MovementLoopAddLocation(NPC, 87.8, -11.48, -37.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.27, -11.69, -16.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.96, -11.37, -25.41, 2, 0)
	MovementLoopAddLocation(NPC, 78.57, -10.7, -36.15, 2, 0)
	MovementLoopAddLocation(NPC, 75.6, -10.61, -39.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.76, -11.52, -25.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.86, -11.45, -41.61, 2, math.random(10, 20))
end


