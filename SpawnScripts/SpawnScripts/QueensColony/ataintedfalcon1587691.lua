--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587691.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587691.lua
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
	MovementLoopAddLocation(NPC, 240.03, -1.6, 26.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.77, -1.56, 39.04, 2, 0)
	MovementLoopAddLocation(NPC, 238.99, -1.62, 52.23, 2, 0)
	MovementLoopAddLocation(NPC, 239.85, -1.62, 55.1, 2, 0)
	MovementLoopAddLocation(NPC, 242.67, -1.6, 59.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 251.34, -1.66, 92.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.35, -1.94, 39.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 233.1, -1.72, 31.9, 2, 0)
	MovementLoopAddLocation(NPC, 223.11, -1.6, 26.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.53, 0.58, 35.24, 2, 0)
	MovementLoopAddLocation(NPC, 251.02, 1.72, 42.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 245.94, 1.53, 51.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 239.88, -0.28, 31.9, 2, 0)
end