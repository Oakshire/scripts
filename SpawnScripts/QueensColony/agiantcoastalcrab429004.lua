--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429004.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429004.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:03 
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
	MovementLoopAddLocation(NPC, 71.39, -9.75, -33.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 68.04, -9.52, -23.92, 2, 0)
	MovementLoopAddLocation(NPC, 60.1, -7.29, -25.87, 2, 0)
	MovementLoopAddLocation(NPC, 52.22, -13.25, -25.77, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 53.17, -10.98, -27.56, 2, 0)
	MovementLoopAddLocation(NPC, 54.05, -9.85, -33.67, 2, 0)
	MovementLoopAddLocation(NPC, 55.51, -10.55, -35.96, 2, 0)
	MovementLoopAddLocation(NPC, 55.11, -11.28, -37.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.18, -12.33, -38.05, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.95, -11.25, -35.98, 2, 0)
	MovementLoopAddLocation(NPC, 54.12, -10.25, -34.29, 2, 0)
	MovementLoopAddLocation(NPC, 54.65, -9.52, -30.42, 2, 0)
	MovementLoopAddLocation(NPC, 52.86, -11.06, -27.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.38, -10.18, -27.63, 2, 0)
	MovementLoopAddLocation(NPC, 56.1, -9.79, -26.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.05, -9.4, -32.67, 2, 0)
	MovementLoopAddLocation(NPC, 54.05, -10.4, -34.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.88, -9.46, -31.38, 2, 0)
	MovementLoopAddLocation(NPC, 56.06, -8.54, -29.43, 2, 0)
	MovementLoopAddLocation(NPC, 56.86, -8.79, -26.6, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 59.21, -6.92, -28.68, 2, 0)
	MovementLoopAddLocation(NPC, 63.25, -6.56, -32.3, 2, 0)
	MovementLoopAddLocation(NPC, 68.27, -8.13, -32.83, 2, 0)
	MovementLoopAddLocation(NPC, 71.28, -9.84, -33.82, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 56.36, -10.09, -34.78, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 58.62, -7.37, -33.09, 2, 0)
end
