--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427054.lua
	Script Purpose	:	Waypoint Path for areefturtle427054.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:51 
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
	MovementLoopAddLocation(NPC, 75.75, -11.72, -76.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.07, -11.69, -76.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.33, -11.31, -68.75, 2, 0)
	MovementLoopAddLocation(NPC, 51.49, -11.04, -60.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.14, -11.44, -62.32, 2, 0)
	MovementLoopAddLocation(NPC, 53.97, -11.69, -64.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.49, -11.98, -71.77, 2, 0)
	MovementLoopAddLocation(NPC, 72.24, -11.83, -76.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.52, -11.2, -61.79, 2, 0)
	MovementLoopAddLocation(NPC, 75.57, -10.18, -56.48, 2, 0)
	MovementLoopAddLocation(NPC, 76.84, -10.17, -49.73, 2, 0)
	MovementLoopAddLocation(NPC, 72.84, -10.2, -40.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.61, -10.59, -44.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.25, -11.07, -53.67, 2, 0)
	MovementLoopAddLocation(NPC, 61.23, -11.8, -59.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.31, -11.75, -47.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.97, -11.78, -62.2, 2, 0)
end

