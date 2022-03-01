--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429009.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429009.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:15 
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
	MovementLoopAddLocation(NPC, 61.17, -10.61, -37.96, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 64.97, -8.5, -35.06, 2, 0)
	MovementLoopAddLocation(NPC, 68.58, -8.1, -30.27, 2, 0)
	MovementLoopAddLocation(NPC, 67.12, -10.35, -21.95, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.1, -9.31, -23.38, 2, 0)
	MovementLoopAddLocation(NPC, 55.55, -8.87, -28.55, 2, 0)
	MovementLoopAddLocation(NPC, 53.92, -9.76, -31.86, 2, 0)
	MovementLoopAddLocation(NPC, 55.75, -10.82, -36.81, 2, 0)
	MovementLoopAddLocation(NPC, 67.12, -10.35, -41.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.59, -9.94, -36.24, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.47, -6.74, -28.3, 2, 0)
	MovementLoopAddLocation(NPC, 66.08, -8.85, -24.29, 2, 0)
	MovementLoopAddLocation(NPC, 68.8, -10.02, -23.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.33, -10.39, -22.03, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 60.31, -7.35, -25.66, 2, 0)
	MovementLoopAddLocation(NPC, 59.21, -10.02, -35.94, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.92, -7.74, -34.62, 2, 0)
	MovementLoopAddLocation(NPC, 66.49, -8.93, -35.75, 2, 0)
	MovementLoopAddLocation(NPC, 67.5, -10.03, -37.89, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 68.33, -9.36, -35.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.66, -9.06, -35.81, 2, 0)
end


