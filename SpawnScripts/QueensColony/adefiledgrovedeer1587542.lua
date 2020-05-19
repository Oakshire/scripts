--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587542.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587542.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:59 
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
	MovementLoopAddLocation(NPC, 165.17, 1.38, 65.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.39, 1.36, 62.51, 2, 0)
	MovementLoopAddLocation(NPC, 175.54, 1.34, 62.64, 2, 0)
	MovementLoopAddLocation(NPC, 194.53, 1.07, 67.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.8, 1.3, 65.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.33, 1.34, 69.73, 2, 0)
	MovementLoopAddLocation(NPC, 167.63, 1.37, 69.83, 2, 0)
	MovementLoopAddLocation(NPC, 153.26, 1.42, 78.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.41, 1.41, 73.49, 2, 0)
	MovementLoopAddLocation(NPC, 164.82, 1.39, 40.71, 2, 0)
	MovementLoopAddLocation(NPC, 168.11, 1.38, 35.62, 2, 0)
	MovementLoopAddLocation(NPC, 175.05, 1.26, 9.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.13, 1.22, 30.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.86, 1.39, 24.29, 2, 0)
	MovementLoopAddLocation(NPC, 149.35, 0.84, 21.52, 2, 0)
	MovementLoopAddLocation(NPC, 145.15, 0.2, 12.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.85, 0.66, 17.61, 2, 0)
	MovementLoopAddLocation(NPC, 171.11, 1.36, 45.68, 2, 0)
	MovementLoopAddLocation(NPC, 182.89, 1.12, 57.34, 2, math.random(10, 24))
end


