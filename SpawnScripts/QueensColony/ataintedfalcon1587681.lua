--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587681.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587681.lua
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
	MovementLoopAddLocation(NPC, 253.84, 2.5, 124.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 236.49, 2.4, 117.63, 2, 0)
	MovementLoopAddLocation(NPC, 231.08, 2.2, 110.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.46, 2.7, 99.37, 2, 0)
	MovementLoopAddLocation(NPC, 257.32, 3.1, 87.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.87, -1.2, 101.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.78, -0.2, 112.9, 2, 0)
	MovementLoopAddLocation(NPC, 256.51, 0.9, 121.17, 2, 0)
	MovementLoopAddLocation(NPC, 259.59, 1.5, 124.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.99, 0.5, 118.75, 2, 0)
	MovementLoopAddLocation(NPC, 250.55, -0.7, 109.25, 2, 0)
	MovementLoopAddLocation(NPC, 244.29, -1.2, 101.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 257.28, 0.9, 104.41, 2, 0)
	MovementLoopAddLocation(NPC, 263.88, 1.5, 104.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.17, 0.3, 103.19, 2, 0)
	MovementLoopAddLocation(NPC, 236.76, -1.3, 98.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 266.84, 2.6, 108.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 257.01, 3.43, 82.15, 2, 0)
	MovementLoopAddLocation(NPC, 254.14, 3.73, 64.42, 2, 0)
	MovementLoopAddLocation(NPC, 253.81, 4.27, 35.24, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.25, 2.6, 66.46, 2, 0)
	MovementLoopAddLocation(NPC, 258.31, 1.5, 73.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.65, 5.32, 99.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.46, 4.2, 112.49, 2, 0)
end
