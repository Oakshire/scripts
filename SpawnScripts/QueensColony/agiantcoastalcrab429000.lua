--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429000.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429000.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:02:54 
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
	MovementLoopAddLocation(NPC, 72.64, -10.03, -27.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.29, -8.45, -25.29, 2, 0)
	MovementLoopAddLocation(NPC, 62.97, -9.04, -23.18, 2, 0)
	MovementLoopAddLocation(NPC, 62.97, -9.55, -22.55, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 63.69, -9.14, -22.95, 2, 0)
	MovementLoopAddLocation(NPC, 64.96, -9.29, -22.49, 2, 0)
	MovementLoopAddLocation(NPC, 66.86, -9.95, -22.64, 2, 0)
	MovementLoopAddLocation(NPC, 72.48, -9.92, -28.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 64.87, -8.79, -23.5, 2, 0)
	MovementLoopAddLocation(NPC, 59.78, -7.25, -26.08, 2, 0)
	MovementLoopAddLocation(NPC, 57.77, -7.44, -28.09, 2, 0)
	MovementLoopAddLocation(NPC, 53.61, -9.83, -31.14, 2, 0)
	MovementLoopAddLocation(NPC, 51.23, -11.06, -31.74, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.22, -10.78, -29.1, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.18, -10.55, -32.19, 2, 0)
	MovementLoopAddLocation(NPC, 50.38, -11.9, -34.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 53.4, -10.06, -31.5, 2, 0)
	MovementLoopAddLocation(NPC, 55.22, -9.17, -30.77, 2, 0)
	MovementLoopAddLocation(NPC, 58.19, -7.32, -27.54, 2, 0)
	MovementLoopAddLocation(NPC, 59.66, -8.49, -24.71, 2, 0)
	MovementLoopAddLocation(NPC, 60.87, -8.24, -24.05, 2, 0)
	MovementLoopAddLocation(NPC, 63.71, -9.66, -22.3, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 58.36, -8.46, -25.52, 2, 0)
	MovementLoopAddLocation(NPC, 52.79, -10.29, -31.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.61, -7.66, -25.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.95, -7.74, -27.88, 2, 0)
	MovementLoopAddLocation(NPC, 70.41, -8.73, -28.5, 2, 0)
	MovementLoopAddLocation(NPC, 72.32, -9.9, -26.8, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 65.5, -9.25, -23.04, 2, 0)
	MovementLoopAddLocation(NPC, 61.89, -9.55, -22.74, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.64, -9.49, -23.53, 2, 0)
end

