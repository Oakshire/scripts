--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587532.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587532.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:40:24 
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
	MovementLoopAddLocation(NPC, 175.54, 1.34, 80.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.87, 1.33, 72.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.96, 1.2, 40.39, 2, 0)
	MovementLoopAddLocation(NPC, 176.98, 1.3, 28.07, 2, 0)
	MovementLoopAddLocation(NPC, 177.12, 1.35, 20.75, 2, 0)
	MovementLoopAddLocation(NPC, 175.01, 1.16, 4.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.07, 1.38, 12.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.56, 1.4, 17.36, 2, 0)
	MovementLoopAddLocation(NPC, 158.68, 1.41, 18.05, 2, 0)
	MovementLoopAddLocation(NPC, 155.36, 1.42, 25.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.04, 1.14, 33.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 188.71, 1.29, 57.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.99, 1.34, 61.26, 2, 0)
	MovementLoopAddLocation(NPC, 169.14, 1.37, 62.93, 2, 0)
	MovementLoopAddLocation(NPC, 159.19, 1.4, 67.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.43, 1.24, 54.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.91, 1.13, 54.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.74, 1.32, 70.05, 2, 0)
end

