--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427582.lua
	Script Purpose	:	Waypoint Path for aneedlefang427582.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:22 
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
	MovementLoopAddLocation(NPC, 100.13, -12.76, -33.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.53, -11.23, -39.8, 2, 0)
	MovementLoopAddLocation(NPC, 76.7, -11.02, -46.44, 2, 0)
	MovementLoopAddLocation(NPC, 67.09, -12.52, -56.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.22, -11.23, -50.79, 2, 0)
	MovementLoopAddLocation(NPC, 77.58, -10.99, -47.76, 2, 0)
	MovementLoopAddLocation(NPC, 89.4, -11.08, -45.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.77, -11.9, -41.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.77, -12.13, -40.22, 2, 0)
	MovementLoopAddLocation(NPC, 97.33, -12.8, -35.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.56, -12.18, -26.28, 2, 0)
	MovementLoopAddLocation(NPC, 76.55, -11.81, -16.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.16, -11.97, -20.29, 2, 0)
	MovementLoopAddLocation(NPC, 87.08, -12.72, -23.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.8, -12.09, -30.31, 2, 0)
end

