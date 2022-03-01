--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon1587682.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon1587682.lua
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
	MovementLoopAddLocation(NPC, 272.47, 2, 114, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 270.21, 1.25, 124.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 268.47, 1.3, 116.9, 2, 0)
	MovementLoopAddLocation(NPC, 267.24, 1.44, 114.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.85, 1.3, 117.99, 2, 0)
	MovementLoopAddLocation(NPC, 236.14, 1.28, 114.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.53, 1.76, 107.69, 2, 0)
	MovementLoopAddLocation(NPC, 236.36, 1.9, 75.23, 2, 0)
	MovementLoopAddLocation(NPC, 239.4, 2.06, 66.16, 2, 0)
	MovementLoopAddLocation(NPC, 236.32, 2.21, 49.23, 2, 0)
	MovementLoopAddLocation(NPC, 227.75, 2.32, 39.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 246.23, -0.21, 39.84, 2, 0)
	MovementLoopAddLocation(NPC, 254.16, -1.25, 42.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.21, 1.08, 35.21, 2, 0)
	MovementLoopAddLocation(NPC, 230.28, 3.24, 25.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 232.15, 2.25, 40.54, 2, 0)
	MovementLoopAddLocation(NPC, 236.04, 1.35, 49.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.44, 1.4, 52.38, 2, 0)
	MovementLoopAddLocation(NPC, 240.28, 1.55, 69.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255.79, 1.37, 95.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 262.63, 1.44, 95.09, 2, math.random(10, 24))
end
