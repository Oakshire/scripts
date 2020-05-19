--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427595.lua
	Script Purpose	:	Waypoint Path for aneedlefang427595.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:17 
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
	MovementLoopAddLocation(NPC, 68.71, -12.07, -52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.03, -11.39, -55.15, 2, 0)
	MovementLoopAddLocation(NPC, 43.36, -12.01, -76.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.2, -11.87, -79.1, 2, 0)
	MovementLoopAddLocation(NPC, 66.43, -11.88, -80.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.79, -11.22, -59.44, 2, 0)
	MovementLoopAddLocation(NPC, 71.79, -11.58, -51.25, 2, 0)
	MovementLoopAddLocation(NPC, 79.5, -12.12, -43.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.89, -11.4, -44.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.69, -11.08, -46.17, 2, 0)
	MovementLoopAddLocation(NPC, 77.38, -10.96, -48.8, 2, 0)
	MovementLoopAddLocation(NPC, 48.69, -12.09, -73.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.26, -12.06, -56.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.63, -11.99, -51.19, 2, 0)
	MovementLoopAddLocation(NPC, 77.13, -12.04, -46.43, 2, 0)
	MovementLoopAddLocation(NPC, 81.34, -12.08, -42.97, 2, 0)
	MovementLoopAddLocation(NPC, 89.21, -12.82, -39.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.21, -12.18, -34.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.02, -12.32, -37.37, 2, 0)
end


