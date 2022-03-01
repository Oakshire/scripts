--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427578.lua
	Script Purpose	:	Waypoint Path for aneedlefang427578.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:57 
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
	MovementLoopAddLocation(NPC, 66.05, -12.15, -70.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.24, -12.06, -73.45, 2, 0)
	MovementLoopAddLocation(NPC, 46.84, -12.08, -76.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.64, -12.03, -68.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.17, -10.3, -55.3, 2, 0)
	MovementLoopAddLocation(NPC, 75.96, -10.7, -41.79, 2, 0)
	MovementLoopAddLocation(NPC, 75.04, -10.41, -35.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.65, -11.97, -37.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.77, -11.76, -39.77, 2, 0)
	MovementLoopAddLocation(NPC, 80.06, -11.32, -44.1, 2, 0)
	MovementLoopAddLocation(NPC, 74.27, -11.07, -51.6, 2, 0)
	MovementLoopAddLocation(NPC, 68.73, -12.06, -72.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.69, -12.11, -70.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.93, -11.06, -82.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.08, -11.26, -80.33, 2, 0)
	MovementLoopAddLocation(NPC, 51.93, -11.83, -75.91, 2, 0)
	MovementLoopAddLocation(NPC, 49.37, -12.08, -72.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.98, -12.16, -78.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.11, -10.5, -80.3, 2, 0)
	MovementLoopAddLocation(NPC, 69.46, -10.31, -81.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.35, -12.05, -54.17, 2, math.random(10, 20))
end


