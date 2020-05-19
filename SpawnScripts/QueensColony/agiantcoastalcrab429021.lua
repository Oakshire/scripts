--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429021.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429021.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:45 
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
	MovementLoopAddLocation(NPC, 33.47, -8.94, -68.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 25.44, -8.41, -66.56, 2, 0)
	MovementLoopAddLocation(NPC, 23.38, -10.2, -64.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.36, -9.39, -73.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.26, -9.48, -67.54, 2, 0)
	MovementLoopAddLocation(NPC, 23.79, -8.48, -67.21, 2, 0)
	MovementLoopAddLocation(NPC, 27.13, -8.1, -65.4, 2, 0)
	MovementLoopAddLocation(NPC, 36.41, -9.17, -60.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 33.93, -7.74, -64.36, 2, 0)
	MovementLoopAddLocation(NPC, 26.6, -9.52, -73.83, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.05, -8.88, -72.23, 2, 0)
	MovementLoopAddLocation(NPC, 22.12, -8.82, -70.56, 2, 0)
	MovementLoopAddLocation(NPC, 24.19, -9.85, -64.49, 2, math.random(16, 24))
end


