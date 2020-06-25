--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587689.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587689.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:07:59 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 227.94, 2.07, 23.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.57, 1.71, 12.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.91, 2.06, 32.12, 2, 0)
	MovementLoopAddLocation(NPC, 234.71, 2.28, 38.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.83, 1.5, 45.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 233.52, 1.01, 49.34, 2, 0)
	MovementLoopAddLocation(NPC, 239.72, 0.03, 53.15, 2, 0)
	MovementLoopAddLocation(NPC, 245.59, -0.91, 54.14, 2, 0)
	MovementLoopAddLocation(NPC, 256.16, -1.5, 52.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 261.69, 0.25, 53.61, 2, 0)
	MovementLoopAddLocation(NPC, 267.84, 1.8, 49.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 262.15, 1.84, 52.8, 2, 0)
	MovementLoopAddLocation(NPC, 244.58, 1.9, 60.47, 2, 0)
	MovementLoopAddLocation(NPC, 241.69, 1.54, 59.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.84, 2.02, 48.93, 2, 0)
	MovementLoopAddLocation(NPC, 237.57, 2.09, 19.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.8, 1.56, 26.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 262.22, -1.57, 42.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.35, 0.37, 31.14, 2, 0)
end