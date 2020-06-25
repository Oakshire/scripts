--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587716.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587716.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:53 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 240.07, -1.72, -98.04, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.42, -1.16, -85.05, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.25, -1.51, -72.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 245.03, -1.09, -95.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.05, -1.52, -65.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 245.75, -1.17, -75.96, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.17, -1.48, -69.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.28, -1.52, -65.45, 2, 0)
	MovementLoopAddLocation(NPC, 265.29, -1.58, -57.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 250.06, -0.53, -87.9, 2, 0)
	MovementLoopAddLocation(NPC, 242.74, -1.44, -97.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 246.41, -0.19, -80.94, 2, 0)
	MovementLoopAddLocation(NPC, 251.35, -1.48, -73.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.14, -0.74, -80.36, 2, math.random(14, 25))
end

