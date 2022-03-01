--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587531.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587531.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:40:14 
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
	MovementLoopAddLocation(NPC, 161.09, 1.39, 91.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.2, 1.37, 89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.67, 1.33, 88, 2, 0)
	MovementLoopAddLocation(NPC, 183.07, 1.31, 83.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 194.77, 1.07, 70.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 189.05, 1.29, 91.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.28, 1.32, 90.09, 2, 0)
	MovementLoopAddLocation(NPC, 168.41, 1.36, 86.28, 2, 0)
	MovementLoopAddLocation(NPC, 161.17, 1.39, 86.06, 2, 0)
	MovementLoopAddLocation(NPC, 153.29, 1.42, 81.2, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.73, 1.42, 82.88, 2, 0)
	MovementLoopAddLocation(NPC, 155.15, 1.41, 97.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.46, 1.32, 93.66, 2, 0)
	MovementLoopAddLocation(NPC, 190.64, 1.28, 94.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.07, 1.34, 99.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.28, 1.37, 100.18, 2, 0)
	MovementLoopAddLocation(NPC, 198.94, 1.25, 85.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 192.68, 1.22, 70.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 174.08, 1.35, 60.02, 2, 0)
	MovementLoopAddLocation(NPC, 163.14, 1.39, 52.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.61, 1.41, 52.06, 2, 0)
	MovementLoopAddLocation(NPC, 151.26, 1.23, 54.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.98, 1.42, 67.95, 2, 0)
	MovementLoopAddLocation(NPC, 157.01, 1.41, 71.91, 2, 0)
end

