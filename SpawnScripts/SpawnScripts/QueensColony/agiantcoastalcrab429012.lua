--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429012.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429012.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:23 
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
	MovementLoopAddLocation(NPC, 23.92, -9.7, -74.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.84, -9.2, -68.95, 2, 0)
	MovementLoopAddLocation(NPC, 20.7, -9.55, -68.89, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 22.72, -9.18, -66.83, 2, 0)
	MovementLoopAddLocation(NPC, 24.35, -8.72, -66.48, 2, 0)
	MovementLoopAddLocation(NPC, 30.16, -9.23, -60.61, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 27.09, -10.56, -56.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 28.99, -9.39, -61.48, 2, 0)
	MovementLoopAddLocation(NPC, 27.17, -8.54, -63.95, 2, 0)
	MovementLoopAddLocation(NPC, 16.35, -10.78, -68.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.01, -8.38, -68.01, 2, 0)
	MovementLoopAddLocation(NPC, 27.74, -9.26, -62.45, 2, 0)
	MovementLoopAddLocation(NPC, 30.05, -9.2, -60.83, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 29.49, -9.18, -73.31, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 33, -9.16, -70.21, 2, 0)
	MovementLoopAddLocation(NPC, 35.35, -10.02, -56.89, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.88, -9.64, -62.35, 2, 0)
	MovementLoopAddLocation(NPC, 36.35, -9.31, -64.24, 2, 0)
	MovementLoopAddLocation(NPC, 36.78, -9.64, -66.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.36, -8.69, -65.96, 2, 0)
	MovementLoopAddLocation(NPC, 31.92, -7.95, -67.17, 2, 0)
end

