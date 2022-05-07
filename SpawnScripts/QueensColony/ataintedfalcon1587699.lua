--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587699.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587699.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:25 
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 222.84, 2.1, -90.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 217.94, 2.07, -64.31, 2, 0)
	MovementLoopAddLocation(NPC, 218.71, 2.01, -57.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.97, 2.14, -62.56, 2, 0)
	MovementLoopAddLocation(NPC, 245.19, 2.21, -64.26, 2, 0)
	MovementLoopAddLocation(NPC, 257.67, 2.25, -68.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.96, 0.24, -49.26, 2, 0)
	MovementLoopAddLocation(NPC, 241.36, -1.4, -38.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 235.45, -1.54, -36.44, 2, 0)
	MovementLoopAddLocation(NPC, 229.46, -1.71, -34.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.95, 2.78, -26.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 247.24, 2.7, -32.52, 2, 0)
	MovementLoopAddLocation(NPC, 223.91, 2.65, -41.48, 2, 0)
	MovementLoopAddLocation(NPC, 220.94, 2.61, -45.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 229.32, 2.41, -49.99, 2, 0)
	MovementLoopAddLocation(NPC, 239.89, 2.27, -57.86, 2, 0)
	MovementLoopAddLocation(NPC, 243.37, 2.08, -62.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.67, 2.1, -68.36, 2, 0)
	MovementLoopAddLocation(NPC, 231.97, 2.1, -84.09, 2, 0)
end

