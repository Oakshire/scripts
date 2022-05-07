--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587687.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587687.lua
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
	MovementLoopAddLocation(NPC, 240.54, 2.5, 61.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 250.22, 2.34, 65.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.15, 2.27, 78.61, 2, 0)
	MovementLoopAddLocation(NPC, 242.99, 2.12, 96.97, 2, 0)
	MovementLoopAddLocation(NPC, 245.61, 2.06, 102.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 236.04, 3.65, 108.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.3, 2.77, 112.57, 2, 0)
	MovementLoopAddLocation(NPC, 238.84, 1.06, 128.1, 2, 0)
	MovementLoopAddLocation(NPC, 234.22, -1.65, 134.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.03, 0.06, 128.63, 2, 0)
	MovementLoopAddLocation(NPC, 248.55, 2.09, 111.6, 2, 0)
	MovementLoopAddLocation(NPC, 254.04, 2.63, 107.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 257.83, 1.85, 120.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.11, 1.96, 78.69, 2, 0)
	MovementLoopAddLocation(NPC, 242.96, 2.24, 64.94, 2, 0)
end