--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587711.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587711.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:36 
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 243.49, 2.6, -75.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 266.75, 2.05, -78.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 250.02, 2.17, -65.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 260.2, 2.1, -72.19, 2, 0)
	MovementLoopAddLocation(NPC, 266.82, 2.01, -75.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 266.74, 2.04, -67.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 261.09, 2.2, -60.9, 2, 0)
	MovementLoopAddLocation(NPC, 238.88, 2.42, -47.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 234.73, -1.45, -30.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 261.21, -1.58, -7.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 248.6, -1.51, -0.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 240.8, 2.88, -36.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 235.5, 2.6, -47.23, 2, 0)
	MovementLoopAddLocation(NPC, 228.01, 2.32, -54.46, 2, 0)
	MovementLoopAddLocation(NPC, 222.79, 2.14, -60.12, 2, 0)
	MovementLoopAddLocation(NPC, 214.33, 2.03, -66.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.62, 3.21, -46.92, 2, math.random(10, 24))
end
