--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon428996.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon428996.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:16 
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
	MovementLoopAddLocation(NPC, 270.68, 2.53, -0.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 264.42, 2.28, -9.39, 2, 0)
	MovementLoopAddLocation(NPC, 260.07, 2, -23.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 267.23, 3.09, -5.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.51, 2, -8.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 238.21, 3.21, -21.32, 2, 0)
	MovementLoopAddLocation(NPC, 238.57, 3.96, -31.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 252.32, 4.12, -15.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 241.94, 3.73, -41.02, 2, 0)
	MovementLoopAddLocation(NPC, 243.32, 3.51, -46.19, 2, 0)
	MovementLoopAddLocation(NPC, 247.3, 3.22, -50.97, 2, 0)
	MovementLoopAddLocation(NPC, 252.29, 2.93, -53.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 244.39, 2.52, -44.67, 2, 0)
	MovementLoopAddLocation(NPC, 241.99, 2.03, -40.38, 2, 0)
	MovementLoopAddLocation(NPC, 245.02, 1.29, -31.6, 2, 0)
	MovementLoopAddLocation(NPC, 253.23, 0.22, -27.44, 2, 0)
	MovementLoopAddLocation(NPC, 268.86, -1.01, -22.81, 2, 0)
	MovementLoopAddLocation(NPC, 273.03, -1.43, -18.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 267.46, -0.84, -20.57, 2, 0)
	MovementLoopAddLocation(NPC, 247.82, 0.71, -21.37, 2, 0)
	MovementLoopAddLocation(NPC, 242.78, 1.68, -25.01, 2, 0)
	MovementLoopAddLocation(NPC, 238.47, 1.96, -25.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 237.95, 2.09, -20.85, 2, 0)
	MovementLoopAddLocation(NPC, 241.97, 2.29, -8.99, 2, 0)
	MovementLoopAddLocation(NPC, 241.27, 2.4, 1.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 258.43, 1.5, 1.94, 2, math.random(10, 24))
end

