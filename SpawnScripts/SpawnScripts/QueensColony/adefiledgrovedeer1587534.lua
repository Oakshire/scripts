--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587534.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587534.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:40:58 
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
	MovementLoopAddLocation(NPC, 169.03, 1.36, 86.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 137.71, 1.28, 68.03, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.32, 1.44, 75.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.24, 1.37, 80.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.16, 1.39, 82.26, 2, 0)
	MovementLoopAddLocation(NPC, 149.77, 1.43, 91.83, 2, 0)
	MovementLoopAddLocation(NPC, 148.01, 1.44, 95.72, 2, 0)
	MovementLoopAddLocation(NPC, 138.44, 1.47, 98.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.99, 1.4, 24.97, 2, 0)
	MovementLoopAddLocation(NPC, 153.13, 1.29, 21.6, 2, 0)
	MovementLoopAddLocation(NPC, 153.13, 0.8, 17.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.2, 1.12, 19.55, 2, 0)
	MovementLoopAddLocation(NPC, 158.52, 1.41, 22.51, 2, 0)
	MovementLoopAddLocation(NPC, 182.45, 1.32, 25.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.62, 1.33, 27.98, 2, 0)
	MovementLoopAddLocation(NPC, 159.8, 1.4, 58.55, 2, 0)
	MovementLoopAddLocation(NPC, 158.7, 1.4, 61.86, 2, 0)
	MovementLoopAddLocation(NPC, 156.29, 1.41, 64.91, 2, 0)
	MovementLoopAddLocation(NPC, 153.37, 1.42, 67.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.43, 1.24, 46.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.1, 1.41, 13.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.39, 1.41, 19.41, 2, 0)
	MovementLoopAddLocation(NPC, 165.81, 1.38, 65.2, 2, 0)
	MovementLoopAddLocation(NPC, 165.97, 1.38, 71.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.15, 1.37, 74.77, 2, 0)
	MovementLoopAddLocation(NPC, 166.85, 1.37, 84.17, 2, 0)
end

