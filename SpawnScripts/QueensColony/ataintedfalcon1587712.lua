--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587712.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587712.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:39 
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
	MovementLoopAddLocation(NPC, 260.3, 2.01, -75.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.94, 3.28, -49.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 259.2, 2.04, -68.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 245.07, 2.5, -48.81, 2, 0)
	MovementLoopAddLocation(NPC, 242.75, 2.76, -42.71, 2, 0)
	MovementLoopAddLocation(NPC, 243.48, 2.94, -36.8, 2, 0)
	MovementLoopAddLocation(NPC, 240.83, 3.17, -29.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.14, 3.2, -39.57, 2, 0)
	MovementLoopAddLocation(NPC, 239.14, 3.21, -47.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.79, 2.45, -72.96, 2, 0)
	MovementLoopAddLocation(NPC, 236.92, 2.05, -80.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 218.36, 3.28, -91.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 222.58, 2.88, -88.24, 2, math.random(10, 24))
end
