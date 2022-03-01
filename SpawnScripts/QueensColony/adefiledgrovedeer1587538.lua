--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587538.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587538.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:28 
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
	MovementLoopAddLocation(NPC, 151.54, 1.43, 88.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163, 1.38, 86.16, 2, 0)
	MovementLoopAddLocation(NPC, 165.19, 1.38, 83.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 194.75, 1.07, 62.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.16, 1.36, 86.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.47, 1.33, 89.29, 2, 0)
	MovementLoopAddLocation(NPC, 186.79, 1.29, 94.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 194.47, 1.07, 73.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.05, 1.39, 78.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 198.36, 1.05, 81.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.97, 1.29, 72.4, 2, 0)
	MovementLoopAddLocation(NPC, 166.93, 1.37, 60.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 164.85, 1.38, 68.85, 2, 0)
end


