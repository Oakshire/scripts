--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon428987.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon428987.lua
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
	MovementLoopAddLocation(NPC, 261.44, 2.3, 130.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.3, 1.8, 135.83, 2, 0)
	MovementLoopAddLocation(NPC, 240.59, 1.4, 137.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.9, -1.4, 111.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 231.79, 3.85, 117.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.12, 2.2, 124.37, 2, 0)
	MovementLoopAddLocation(NPC, 258.05, 1.4, 121.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 271.38, 1.55, 124.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 265.54, 1.7, 110.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 233.75, -1.2, 95.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 239.11, -1.33, 100.58, 2, 0)
	MovementLoopAddLocation(NPC, 244.19, -1.5, 118.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.26, 1.3, 132.8, 2, 0)
end
