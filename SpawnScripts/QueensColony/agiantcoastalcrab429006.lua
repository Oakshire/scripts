--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429006.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429006.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:08 
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
	MovementLoopAddLocation(NPC, 67.57, -10.78, -21.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.87, -9.52, -23.66, 2, 0)
	MovementLoopAddLocation(NPC, 68.72, -9.77, -35.94, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 63.61, -8.31, -35.52, 2, 0)
	MovementLoopAddLocation(NPC, 60.88, -9.27, -36.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 69.19, -9.89, -23.74, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 58.18, -7.34, -27.19, 2, 0)
	MovementLoopAddLocation(NPC, 55.7, -8.95, -32.72, 2, 0)
	MovementLoopAddLocation(NPC, 56.01, -9.83, -34.97, 2, 0)
	MovementLoopAddLocation(NPC, 59.44, -9.8, -35.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.66, -10.47, -39.71, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 68.87, -8.43, -32.28, 2, 0)
	MovementLoopAddLocation(NPC, 69.54, -8.59, -27.13, 2, 0)
	MovementLoopAddLocation(NPC, 68.51, -9.35, -24.46, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.46, -10.25, -22.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.44, -8.46, -25.88, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 61.24, -9.6, -36.34, 2, math.random(16, 24))
end


