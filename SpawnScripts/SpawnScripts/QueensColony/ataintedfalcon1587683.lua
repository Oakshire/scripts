--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587683.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587683.lua
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
	MovementLoopAddLocation(NPC, 254.44, 1.52, 85.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 267.45, 2.62, 97.14, 2, 0)
	MovementLoopAddLocation(NPC, 274.44, 3.75, 111.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.18, 1.93, 95.4, 2, 0)
	MovementLoopAddLocation(NPC, 251.73, 1.6, 94.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 265.39, 3.1, 105.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 250.27, 4.45, 114.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.88, -1.7, 103.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 247.99, 0.24, 95.14, 2, 0)
	MovementLoopAddLocation(NPC, 253.95, 1.4, 81.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.51, 3.1, 99.45, 2, 0)
	MovementLoopAddLocation(NPC, 241.71, 4.15, 104.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.37, 3.81, 99.14, 2, 0)
	MovementLoopAddLocation(NPC, 241.6, 3.07, 82.06, 2, 0)
	MovementLoopAddLocation(NPC, 245.27, 2.41, 78.56, 2, math.random(10, 24))
end