--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429013.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429013.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:25 
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
	MovementLoopAddLocation(NPC, 35.73, -10.34, -56.81, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 24.74, -8.66, -66.43, 2, 0)
	MovementLoopAddLocation(NPC, 21.22, -9.57, -67.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 39.12, -10.68, -67.13, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.11, -9.23, -63.98, 2, 0)
	MovementLoopAddLocation(NPC, 35.31, -10.16, -56.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 24.16, -9.13, -73.39, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 20.92, -9.17, -71.91, 2, 0)
	MovementLoopAddLocation(NPC, 21.79, -9.08, -69.68, 2, 0)
	MovementLoopAddLocation(NPC, 19.98, -10.19, -66.78, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.06, -8.72, -67.24, 2, 0)
	MovementLoopAddLocation(NPC, 36.86, -9.77, -66.84, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.96, -8.34, -64.1, 2, 0)
	MovementLoopAddLocation(NPC, 34.9, -8.23, -61.62, 2, 0)
	MovementLoopAddLocation(NPC, 35.8, -8.98, -59.55, 2, 0)
end


