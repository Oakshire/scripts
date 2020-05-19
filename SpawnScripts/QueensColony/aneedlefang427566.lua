--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427566.lua
	Script Purpose	:	Waypoint Path for aneedlefang427566.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:18 
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
	MovementLoopAddLocation(NPC, -25.26, -11.65, -44.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.12, -10.52, -49.7, 2, 0)
	MovementLoopAddLocation(NPC, -33.39, -10.35, -55.25, 2, 0)
	MovementLoopAddLocation(NPC, -41.79, -10.23, -67.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.64, -11.99, -79.13, 2, 0)
	MovementLoopAddLocation(NPC, -32.59, -12.07, -89.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.45, -12.13, -69.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.05, -11.45, -58.97, 2, 0)
	MovementLoopAddLocation(NPC, -40, -11.3, -50.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.6, -10.3, -54.44, 2, 0)
	MovementLoopAddLocation(NPC, -14.01, -10.3, -61.83, 2, 0)
	MovementLoopAddLocation(NPC, -5.38, -11.17, -70.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.45, -11.35, -50.54, 2, 0)
	MovementLoopAddLocation(NPC, -22.88, -12.65, -44.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.76, -11.99, -39.89, 2, math.random(10, 20))
end

