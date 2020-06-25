--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429003.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429003.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:01 
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
	MovementLoopAddLocation(NPC, 72.97, -10.66, -33.49, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 71.47, -9.63, -31.65, 2, 0)
	MovementLoopAddLocation(NPC, 64.08, -6.81, -26.63, 2, 0)
	MovementLoopAddLocation(NPC, 59.96, -6.93, -27.85, 2, 0)
	MovementLoopAddLocation(NPC, 56.5, -9.98, -35.11, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.39, -9.66, -31.84, 2, 0)
	MovementLoopAddLocation(NPC, 55.98, -8.56, -28.62, 2, 0)
	MovementLoopAddLocation(NPC, 56.65, -9.03, -26.62, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 57.13, -8.59, -26.49, 2, 0)
	MovementLoopAddLocation(NPC, 57.75, -7.25, -32.26, 2, 0)
	MovementLoopAddLocation(NPC, 57.32, -10.24, -37.51, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 57.63, -8.75, -34.03, 2, 0)
	MovementLoopAddLocation(NPC, 56, -8.56, -29, 2, 0)
	MovementLoopAddLocation(NPC, 57.58, -8.77, -25.92, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.52, -8.98, -27.95, 2, 0)
	MovementLoopAddLocation(NPC, 55.42, -9.11, -31.95, 2, 0)
	MovementLoopAddLocation(NPC, 55.5, -10.24, -35.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 59.43, -8.93, -35.15, 2, 0)
	MovementLoopAddLocation(NPC, 61.48, -8.3, -35.55, 2, 0)
	MovementLoopAddLocation(NPC, 71.33, -9.68, -32.62, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.39, -9.14, -35.85, 2, 0)
	MovementLoopAddLocation(NPC, 56.33, -9.85, -34.71, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 51.51, -11.01, -34.28, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 53.51, -10.02, -33.05, 2, 0)
	MovementLoopAddLocation(NPC, 55.52, -8.9, -30.24, 2, 0)
	MovementLoopAddLocation(NPC, 60.11, -8.93, -23.96, 2, 0)
	MovementLoopAddLocation(NPC, 60.15, -9.92, -22.96, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.24, -7.74, -24.48, 2, 0)
end

