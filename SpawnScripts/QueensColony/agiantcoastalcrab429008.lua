--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429008.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429008.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:12 
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
	MovementLoopAddLocation(NPC, 67.49, -10.4, -22.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 71.59, -9.38, -28.22, 2, 0)
	MovementLoopAddLocation(NPC, 68.72, -9.98, -36.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 61.8, -10.56, -38.4, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.91, -6.94, -33.11, 2, 0)
	MovementLoopAddLocation(NPC, 65.55, -6.9, -27.73, 2, 0)
	MovementLoopAddLocation(NPC, 65.98, -8.99, -23.93, 2, 0)
	MovementLoopAddLocation(NPC, 68.85, -10.64, -22.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.97, -9.15, -23.6, 2, 0)
	MovementLoopAddLocation(NPC, 57.74, -10.03, -35.79, 2, 0)
	MovementLoopAddLocation(NPC, 62.13, -10.72, -39.42, 2, 0)
	MovementLoopAddLocation(NPC, 64.04, -10.53, -39.24, 2, 0)
	MovementLoopAddLocation(NPC, 65.89, -10.49, -39.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 61.56, -10.48, -37.88, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.3, -9.41, -35.9, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.98, -7.67, -32.27, 2, 0)
end


