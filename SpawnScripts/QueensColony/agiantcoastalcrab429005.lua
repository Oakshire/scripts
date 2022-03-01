--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429005.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429005.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:05 
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
	MovementLoopAddLocation(NPC, 56.26, -9.97, -34.94, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 70.41, -9.22, -33.33, 2, 0)
	MovementLoopAddLocation(NPC, 71.69, -10.09, -34.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 58.19, -8.97, -25.28, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.68, -9.78, -33.88, 2, 0)
	MovementLoopAddLocation(NPC, 53.15, -10.98, -35.36, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.62, -9.81, -34.26, 2, 0)
	MovementLoopAddLocation(NPC, 62, -6.39, -32.15, 2, 0)
	MovementLoopAddLocation(NPC, 65.01, -7.03, -31.52, 2, 0)
	MovementLoopAddLocation(NPC, 71.88, -10.32, -34.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 58.44, -7.23, -32.84, 2, 0)
	MovementLoopAddLocation(NPC, 52.62, -11.65, -36.71, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.66, -10.67, -34.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.23, -9.93, -33.86, 2, 0)
	MovementLoopAddLocation(NPC, 56.31, -9.57, -34.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 51.49, -11.3, -34.68, 2, math.random(16, 24))
end

