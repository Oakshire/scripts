--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427215.lua
 	Script Purpose	:	Waypoint Path for areefturtle427215.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:02:55 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -50.18, -11.66, 245.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.22, -13.37, 257.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.94, -13.23, 252.13, 2, 0)
	MovementLoopAddLocation(NPC, -66.39, -12.03, 248.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.46, -12, 257.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.25, -13.32, 260.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.98, -13.84, 251.9, 2, 0)
	MovementLoopAddLocation(NPC, -62.19, -13.27, 245.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.35, -13.29, 253.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.25, -12.01, 271.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.21, -13.42, 263.79, 2, 0)
	MovementLoopAddLocation(NPC, -68.21, -13.8, 261.88, 2, 0)
	MovementLoopAddLocation(NPC, -73.42, -14.47, 255.03, 2, 0)
	MovementLoopAddLocation(NPC, -74.21, -14.66, 253.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.27, -11.95, 257.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.05, -13.25, 249.06, 2, 0)
	MovementLoopAddLocation(NPC, -62.19, -14.27, 244.86, 2, 0)
	MovementLoopAddLocation(NPC, -64.35, -14.63, 243.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.77, -13.86, 244.26, 2, 0)
end

