--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587684.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587684.lua
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
	MovementLoopAddLocation(NPC, 242.88, 1.6, 84.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.72, 1.4, 96.45, 2, 0)
	MovementLoopAddLocation(NPC, 271.56, 1.41, 111.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.65, 2.5, 108.19, 2, 0)
	MovementLoopAddLocation(NPC, 238.29, 2.86, 107.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.23, 0.45, 112.36, 2, 0)
	MovementLoopAddLocation(NPC, 247.05, -1.9, 118.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.18, -1.63, 112.22, 2, 0)
	MovementLoopAddLocation(NPC, 259.89, -1.5, 107.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 259.68, 1.65, 101.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.86, 1.5, 112.25, 2, 0)
	MovementLoopAddLocation(NPC, 250.82, 1.45, 118.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.97, 1.56, 121.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 239.36, 1.4, 124.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.25, 1.76, 103.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.57, 2.8, 96.54, 2, 0)
	MovementLoopAddLocation(NPC, 244.23, 4.49, 71.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.68, 3.67, 78.09, 2, 0)
	MovementLoopAddLocation(NPC, 248.37, -1.4, 101.54, 2, math.random(10, 24))
end