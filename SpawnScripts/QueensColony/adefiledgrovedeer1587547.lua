--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587547.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587547.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:42:28 
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
	MovementLoopAddLocation(NPC, 188.92, 1.3, 31.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.44, 1.32, 22.19, 2, 0)
	MovementLoopAddLocation(NPC, 185.4, 1.32, 13.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.26, 1.33, 15.47, 2, 0)
	MovementLoopAddLocation(NPC, 174.73, 1.15, 29.96, 2, 0)
	MovementLoopAddLocation(NPC, 160.79, 1.4, 55.26, 2, 0)
	MovementLoopAddLocation(NPC, 158.51, 1.41, 62.3, 2, 0)
	MovementLoopAddLocation(NPC, 152.11, 1.43, 71.12, 2, 0)
	MovementLoopAddLocation(NPC, 148.3, 1.44, 77.96, 2, 0)
	MovementLoopAddLocation(NPC, 147.61, 1.44, 86.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.18, 1.36, 91.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.31, 1.39, 85.99, 2, 0)
	MovementLoopAddLocation(NPC, 143.36, 1.26, 62.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.14, 1.42, 65.11, 2, 0)
	MovementLoopAddLocation(NPC, 163.48, 1.39, 63.8, 2, 0)
	MovementLoopAddLocation(NPC, 167.06, 1.37, 59.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.84, 1.13, 45.19, 2, 0)
end


