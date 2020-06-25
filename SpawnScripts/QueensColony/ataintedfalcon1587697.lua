--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587697.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587697.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:21 
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
	MovementLoopAddLocation(NPC, 232.84, 2, -32.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.11, -1.3, -36.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 226.76, 2.66, -44.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 254.71, 2.24, -52.27, 2, 0)
	MovementLoopAddLocation(NPC, 264.44, 2.1, -57.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 261.94, 1.82, -55.91, 2, 0)
	MovementLoopAddLocation(NPC, 244.67, 0.59, -45.67, 2, 0)
	MovementLoopAddLocation(NPC, 242.63, 0.19, -42.85, 2, 0)
	MovementLoopAddLocation(NPC, 242.74, -0.55, -37.37, 2, 0)
	MovementLoopAddLocation(NPC, 256.09, -0.99, -26.64, 2, 0)
	MovementLoopAddLocation(NPC, 257.25, -1.6, -19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.26, 2, -0.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.67, 1.98, -11.88, 2, 0)
	MovementLoopAddLocation(NPC, 231.26, 1.96, -22.54, 2, 0)
	MovementLoopAddLocation(NPC, 230.61, 1.94, -29.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 259.95, -1.36, -6.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 247.82, -1.37, -12.37, 2, 0)
	MovementLoopAddLocation(NPC, 242.52, -1.38, -25.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.47, 1.48, -44.05, 2, 0)
	MovementLoopAddLocation(NPC, 245.86, 1.91, -48.19, 2, 0)
	MovementLoopAddLocation(NPC, 254.04, 2.62, -52.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.05, 2.6, -44.39, 2, 0)
	MovementLoopAddLocation(NPC, 234.26, 2.6, -23.6, 2, math.random(10, 24))
end
