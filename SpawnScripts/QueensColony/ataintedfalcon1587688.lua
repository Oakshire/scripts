--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587688.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587688.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:07:59 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "hp", 75)
        SpawnSet(NPC, "power", 45)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 251.18, -1.8, 48.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.69, -1.7, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, 259.04, -1.65, 67.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.31, -1.72, 64.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.2, -1.6, 59.9, 2, 0)
	MovementLoopAddLocation(NPC, 237.29, -1.52, 55.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.45, -0.22, 49.32, 2, 0)
	MovementLoopAddLocation(NPC, 241.32, 0.88, 43.41, 2, 0)
	MovementLoopAddLocation(NPC, 254.98, 1.55, 36.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.28, 1.51, 47.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 224.36, 2.17, 32.48, 2, 0)
	MovementLoopAddLocation(NPC, 224.19, 2.77, 18.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 225.55, 1.57, 24.13, 2, 0)
	MovementLoopAddLocation(NPC, 232.66, 0.65, 29.85, 2, 0)
	MovementLoopAddLocation(NPC, 246.97, -1.4, 45.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 251.02, -1.4, 64.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.38, 0.39, 55.62, 2, 0)
	MovementLoopAddLocation(NPC, 226.73, 2.33, 35.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 236.87, 0.61, 40.22, 2, 0)
	MovementLoopAddLocation(NPC, 244.47, -1.41, 45.42, 2, math.random(10, 24))
end