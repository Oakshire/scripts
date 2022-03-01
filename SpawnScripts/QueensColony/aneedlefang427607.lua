--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427607.lua
	Script Purpose	:	Waypoint Path for aneedlefang427607.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:17 
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
	MovementLoopAddLocation(NPC, 25.34, -13.11, -25.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.82, -11.68, -46.59, 2, 0)
	MovementLoopAddLocation(NPC, -2.81, -11.2, -74.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.97, -11.03, -66.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.43, -11.03, -75.37, 2, 0)
	MovementLoopAddLocation(NPC, -1.31, -10.98, -84.34, 2, 0)
	MovementLoopAddLocation(NPC, -2, -11.76, -90, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.06, -10.61, -94.21, 2, 0)
	MovementLoopAddLocation(NPC, -25.04, -10.57, -95.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.64, -10.77, -84.17, 2, 0)
	MovementLoopAddLocation(NPC, -2.75, -11.04, -78.06, 2, 0)
	MovementLoopAddLocation(NPC, 2.13, -11.34, -71.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.26, -11.83, -51.87, 2, math.random(10, 20))
end

