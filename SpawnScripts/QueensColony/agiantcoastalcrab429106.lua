--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429106.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429106.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:02:52 
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
	MovementLoopAddLocation(NPC, 52.2, -10.2, -32.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 53.63, -9.93, -28.81, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.83, -8.68, -28.89, 2, 0)
	MovementLoopAddLocation(NPC, 58.61, -7.16, -27.97, 2, 0)
	MovementLoopAddLocation(NPC, 62.01, -9.83, -22.53, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 60.87, -7.84, -24.44, 2, 0)
	MovementLoopAddLocation(NPC, 57.34, -8.51, -26.35, 2, 0)
	MovementLoopAddLocation(NPC, 54.12, -9.77, -31.13, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 74.35, -10.88, -27.14, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 64.75, -7.07, -32.35, 2, 0)
	MovementLoopAddLocation(NPC, 55.36, -9.15, -31.86, 2, 0)
	MovementLoopAddLocation(NPC, 52.28, -10.46, -31.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 56.32, -8.24, -30.13, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.22, -9.73, -32.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 51.88, -10.26, -30.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.1, -9.7, -30.08, 2, 0)
	MovementLoopAddLocation(NPC, 56.15, -8.38, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, 58.15, -7.27, -28.78, 2, 0)
	MovementLoopAddLocation(NPC, 61.93, -9.67, -22.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 59.43, -8.26, -25.1, 2, 0)
	MovementLoopAddLocation(NPC, 56.37, -8.68, -27.18, 2, 0)
	MovementLoopAddLocation(NPC, 53.57, -9.87, -29.83, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 59.95, -6.59, -28.87, 2, 0)
	MovementLoopAddLocation(NPC, 74.86, -10.95, -29.18, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 69.04, -8.52, -31.5, 2, 0)
	MovementLoopAddLocation(NPC, 58.23, -8.55, -34.2, 2, 0)
end

