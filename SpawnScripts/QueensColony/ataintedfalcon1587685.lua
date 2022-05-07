--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587685.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587685.lua
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
	MovementLoopAddLocation(NPC, 244.76, 3.1, 97.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 248.06, 3.24, 104.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.55, 2.8, 110.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 227.41, 2.2, 116.01, 2, 0)
	MovementLoopAddLocation(NPC, 223.77, 1.15, 123.08, 2, 0)
	MovementLoopAddLocation(NPC, 224.04, -0.27, 128.65, 2, 0)
	MovementLoopAddLocation(NPC, 227.76, -1.4, 137.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 259.44, 1.62, 117.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 249.22, -0.13, 114.44, 2, 0)
	MovementLoopAddLocation(NPC, 241.82, -1.63, 111.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.53, 1.52, 96.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 253.91, 1.62, 59.77, 2, 0)
	MovementLoopAddLocation(NPC, 260.51, 1.73, 43.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 269.61, 1.77, 50.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.47, 2.29, 72, 2, 0)
end