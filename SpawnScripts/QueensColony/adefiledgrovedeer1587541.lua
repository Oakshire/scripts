--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587541.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587541.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:49 
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
	MovementLoopAddLocation(NPC, 169.31, 1.37, 49.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 190.54, 1.88, 20.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.77, 1.31, 18.43, 2, 0)
	MovementLoopAddLocation(NPC, 182.37, 1.33, 19.03, 2, 0)
	MovementLoopAddLocation(NPC, 157.08, 1.42, 6.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.49, 0.22, 4.12, 2, 0)
	MovementLoopAddLocation(NPC, 149.35, 0.19, 1.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.02, 0.62, 4.75, 2, 0)
	MovementLoopAddLocation(NPC, 163.04, 1.4, 9.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.03, 1.26, 25.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.72, 1.3, 48.26, 2, 0)
	MovementLoopAddLocation(NPC, 192.59, 1.28, 54.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 196.61, 1.06, 73.09, 2, math.random(10, 24))
end


