--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427577.lua
	Script Purpose	:	Waypoint Path for aneedlefang427577.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:38 
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
	MovementLoopAddLocation(NPC, 85.23, -12.07, -43.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.88, -12.96, -37.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.82, -12.76, -30.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.94, -12.99, -37.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78, -11.77, -43.61, 2, 0)
	MovementLoopAddLocation(NPC, 64.41, -10.95, -51.86, 2, 0)
	MovementLoopAddLocation(NPC, 56.69, -11.16, -57.34, 2, 0)
	MovementLoopAddLocation(NPC, 51.67, -11.05, -62.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.57, -10.97, -67.62, 2, 0)
	MovementLoopAddLocation(NPC, 42.18, -11.01, -71.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.98, -11.67, -71.89, 2, 0)
	MovementLoopAddLocation(NPC, 58.88, -12, -72.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.25, -10.29, -51.43, 2, 0)
	MovementLoopAddLocation(NPC, 79.01, -10.69, -46.26, 2, 0)
	MovementLoopAddLocation(NPC, 90.42, -10.99, -43.32, 2, math.random(10, 20))
end


