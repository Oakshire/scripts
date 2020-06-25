--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon1587710.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon1587710.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:33 
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
	MovementLoopAddLocation(NPC, 233.09, 4.73, -87.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 266.47, 2.1, -80.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 242.95, 2.9, -44.16, 2, 0)
	MovementLoopAddLocation(NPC, 244.2, 3.1, -35.29, 2, 0)
	MovementLoopAddLocation(NPC, 253.43, 3.33, -15.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 256.99, 2.7, -6.89, 2, 0)
	MovementLoopAddLocation(NPC, 262.45, 2.1, -0.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 255, 2.04, -9.43, 2, 0)
	MovementLoopAddLocation(NPC, 251.67, 2.01, -16.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 243.37, 2.34, -38.77, 2, 0)
	MovementLoopAddLocation(NPC, 242.61, 2.5, -44.46, 2, 0)
	MovementLoopAddLocation(NPC, 247.29, 2.75, -50.27, 2, 0)
	MovementLoopAddLocation(NPC, 250.36, 2.91, -51.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.36, 2.87, -88.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 213.28, 3.27, -80.02, 2, 0)
	MovementLoopAddLocation(NPC, 209.85, 3.45, -78.02, 2, math.random(10, 24))
end