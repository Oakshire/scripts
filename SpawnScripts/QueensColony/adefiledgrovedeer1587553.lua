--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587553.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587553.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:34 
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
	MovementLoopAddLocation(NPC, 159.01, 1.41, 9.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.89, 0.58, 4.32, 2, 0)
	MovementLoopAddLocation(NPC, 150.24, 0.18, -0.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.9, 0.35, 8.15, 2, 0)
	MovementLoopAddLocation(NPC, 145.38, 0.8, 25.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.12, 1.42, 54.74, 2, 0)
	MovementLoopAddLocation(NPC, 159.21, 1.4, 59.13, 2, 0)
	MovementLoopAddLocation(NPC, 159.17, 1.4, 62.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.72, 1.42, 66.29, 2, 0)
	MovementLoopAddLocation(NPC, 133.94, 1.42, 72.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.7, 1.46, 71.98, 2, 0)
	MovementLoopAddLocation(NPC, 152.22, 1.43, 70.19, 2, 0)
	MovementLoopAddLocation(NPC, 159.2, 1.4, 70.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.23, 1.39, 71.52, 2, 0)
	MovementLoopAddLocation(NPC, 188.83, 1.18, 65.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 188.06, 1.29, 75.09, 2, 0)
	MovementLoopAddLocation(NPC, 186.12, 1.3, 80.43, 2, 0)
	MovementLoopAddLocation(NPC, 186.03, 1.3, 84.87, 2, 0)
	MovementLoopAddLocation(NPC, 186.82, 1.29, 91.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.95, 1.31, 86.39, 2, 0)
	MovementLoopAddLocation(NPC, 164.74, 1.38, 77.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.44, 1.46, 43.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.25, 1.17, 17.5, 2, 0)
	MovementLoopAddLocation(NPC, 157.35, 1.42, 14.57, 2, 0)
	MovementLoopAddLocation(NPC, 158.79, 1.42, 9.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.55, 1.05, 6.08, 2, 0)
	MovementLoopAddLocation(NPC, 151.49, 0.18, 2.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.38, 0.17, 10.05, 2, 0)
	MovementLoopAddLocation(NPC, 145.48, 0.83, 25.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.73, 0.79, 11.28, 2, 0)
end
