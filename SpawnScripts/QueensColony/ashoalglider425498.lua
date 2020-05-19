--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425498.lua
	Script Purpose	:	Waypoint Path for ashoalglider425498.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:14 
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
	MovementLoopAddLocation(NPC, 71.04, -11.5, -47.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.45, -11.89, -44.78, 2, 0)
	MovementLoopAddLocation(NPC, 87.2, -12.22, -42, 2, 4)
	MovementLoopAddLocation(NPC, 79.55, -11.59, -44.58, 2, 0)
	MovementLoopAddLocation(NPC, 74.8, -11.19, -49.21, 2, 0)
	MovementLoopAddLocation(NPC, 60.87, -11.34, -61.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.58, -10.55, -82.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.01, -11.6, -60.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.26, -10.7, -77.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.29, -10.61, -45.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.04, -10.7, -39.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.53, -11.31, -34.64, 2, 0)
	MovementLoopAddLocation(NPC, 99.5, -11.49, -25.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.94, -11.78, -24.5, 2, 0)
	MovementLoopAddLocation(NPC, 83.63, -12.37, -21.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.74, -10.7, -45.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.55, -10.76, -45.45, 2, 0)
end


