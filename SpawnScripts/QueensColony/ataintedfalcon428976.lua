--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon428976.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon428976.lua
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
	MovementLoopAddLocation(NPC, 243.8, 2.2, 103.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 258.32, -0.2, 124.83, 2, 0)
	MovementLoopAddLocation(NPC, 257.75, -1.2, 130.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 268.74, -1.2, 118.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 270.52, -1.7, 117.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 263.53, -0.3, 116.02, 2, 0)
	MovementLoopAddLocation(NPC, 250.77, 1.57, 115, 2, 0)
	MovementLoopAddLocation(NPC, 235.28, 3, 107.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.74, 2.1, 99.34, 2, 0)
	MovementLoopAddLocation(NPC, 238.89, 1.6, 94.23, 2, math.random(10, 24))

end