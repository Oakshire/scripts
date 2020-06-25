--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429010.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429010.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:18 
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
	MovementLoopAddLocation(NPC, 68.56, -9.95, -36.39, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 70.27, -9.52, -25.07, 2, 0)
	MovementLoopAddLocation(NPC, 67.9, -9.43, -24.04, 2, 0)
	MovementLoopAddLocation(NPC, 67.98, -10.37, -21.9, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 68.89, -9.63, -24.09, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.28, -6.06, -30.1, 2, 0)
	MovementLoopAddLocation(NPC, 63.19, -7.91, -34.92, 2, 0)
	MovementLoopAddLocation(NPC, 62.54, -10.41, -37.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 63.44, -7.96, -34.99, 2, 0)
	MovementLoopAddLocation(NPC, 66.86, -7.6, -31.53, 2, 0)
	MovementLoopAddLocation(NPC, 66.9, -8.48, -25.47, 2, 0)
	MovementLoopAddLocation(NPC, 70.38, -10.01, -23.72, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 59.25, -7.01, -27.75, 2, 0)
	MovementLoopAddLocation(NPC, 57.07, -7.74, -32.03, 2, 0)
	MovementLoopAddLocation(NPC, 57.43, -10.02, -36.03, 2, 0)
	MovementLoopAddLocation(NPC, 62.17, -10.49, -38.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.35, -8.33, -34.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.32, -9.49, -36.02, 2, 0)
	MovementLoopAddLocation(NPC, 69.83, -10.34, -37.3, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.06, -7.98, -33.75, 2, 0)
	MovementLoopAddLocation(NPC, 68.52, -10.52, -22.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 63.46, -10.62, -39.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.17, -10.54, -39.75, 2, 0)
end

