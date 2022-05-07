--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587695.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587695.lua
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
	MovementLoopAddLocation(NPC, 251.32, 1.53, -5.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.61, 0.08, -0.76, 2, 0)
	MovementLoopAddLocation(NPC, 241.23, -1.11, 2.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.52, 2.19, -11.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 250.13, 2.2, -29.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.48, 2.25, -37.56, 2, 0)
	MovementLoopAddLocation(NPC, 242.55, 2.29, -42.31, 2, 0)
	MovementLoopAddLocation(NPC, 243.82, 2.33, -48.63, 2, 0)
	MovementLoopAddLocation(NPC, 252.19, 2.47, -55.39, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 228.86, 1.55, -39.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.46, 1.89, -20.46, 2, 0)
	MovementLoopAddLocation(NPC, 236.04, 2.16, -7.99, 2, 0)
	MovementLoopAddLocation(NPC, 240.7, 2.55, -3.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 251.71, 1.85, -6.13, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 249.56, 1.62, -1.77, 2, 0)
	MovementLoopAddLocation(NPC, 247.17, 1.58, 0.3, 2, 0)
	MovementLoopAddLocation(NPC, 241.74, 1.55, 1.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.61, 2.89, -11.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 250.11, 3.25, -29.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.69, 3.95, -36.6, 2, 0)
	MovementLoopAddLocation(NPC, 242.74, 4.58, -41.28, 2, 0)
	MovementLoopAddLocation(NPC, 243.13, 4.76, -45.65, 2, 0)
	MovementLoopAddLocation(NPC, 248.38, 5.01, -52.54, 2, 0)
	MovementLoopAddLocation(NPC, 253, 5.36, -55.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 228.92, 1.79, -39.71, 2, math.random(10, 24))
end