--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429001.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429001.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:02:56 
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
	MovementLoopAddLocation(NPC, 71.52, -10, -34.04, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.98, -8.25, -25.43, 2, 0)
	MovementLoopAddLocation(NPC, 60.83, -8.24, -24.08, 2, 0)
	MovementLoopAddLocation(NPC, 53.1, -13.64, -24.16, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.29, -10.36, -29.74, 2, 0)
	MovementLoopAddLocation(NPC, 56.08, -8.51, -31.35, 2, 0)
	MovementLoopAddLocation(NPC, 70.17, -9.08, -32.05, 2, 0)
	MovementLoopAddLocation(NPC, 72.3, -9.97, -31.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.42, -8.23, -33.69, 2, 0)
	MovementLoopAddLocation(NPC, 62.54, -7.03, -33.33, 2, 0)
	MovementLoopAddLocation(NPC, 59.45, -8.28, -34.52, 2, 0)
	MovementLoopAddLocation(NPC, 56.25, -10.6, -36.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 56.92, -7.92, -32.55, 2, 0)
	MovementLoopAddLocation(NPC, 57.54, -8.99, -25.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 63.65, -6.38, -28.04, 2, 0)
	MovementLoopAddLocation(NPC, 69.15, -8.57, -32.42, 2, 0)
	MovementLoopAddLocation(NPC, 72.41, -10.24, -32.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.47, -7.89, -25.75, 2, 0)
	MovementLoopAddLocation(NPC, 58.06, -8.19, -25.96, 2, 0)
	MovementLoopAddLocation(NPC, 56.54, -8.69, -27, 2, 0)
	MovementLoopAddLocation(NPC, 56.6, -9.05, -26.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 72.41, -10.24, -35.16, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 70.45, -9.02, -26.99, 2, 0)
	MovementLoopAddLocation(NPC, 59.72, -7.17, -26.49, 2, 0)
	MovementLoopAddLocation(NPC, 58.83, -8.5, -25.18, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.04, -10.3, -35.17, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 60.31, -7.41, -33.77, 2, 0)
	MovementLoopAddLocation(NPC, 67.59, -7.85, -32.5, 2, 0)
	MovementLoopAddLocation(NPC, 70.14, -9.07, -32.46, 2, 0)
end

