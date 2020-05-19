--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587544.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587544.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:42:09 
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
	MovementLoopAddLocation(NPC, 169.22, 1.37, 49.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 196.83, 1.27, 51.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 182.87, 1.12, 57.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.62, 1.3, 70.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.46, 1.33, 68.31, 2, 0)
	MovementLoopAddLocation(NPC, 170.06, 1.36, 67.8, 2, 0)
	MovementLoopAddLocation(NPC, 155.3, 1.42, 62.42, 2, 0)
	MovementLoopAddLocation(NPC, 150.93, 1.43, 62.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.33, 1.41, 57.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.47, 1.4, 38.03, 2, 0)
	MovementLoopAddLocation(NPC, 156.49, 1.42, 23.27, 2, 0)
	MovementLoopAddLocation(NPC, 154.79, 1.21, 19.53, 2, 0)
	MovementLoopAddLocation(NPC, 153.43, 0.72, 9.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.22, 1.42, 12.62, 2, 0)
	MovementLoopAddLocation(NPC, 158.23, 1.41, 21.11, 2, 0)
	MovementLoopAddLocation(NPC, 161.22, 1.2, 28.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 139.86, 1.48, 35.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.25, 1.36, 44.96, 2, 0)
end


