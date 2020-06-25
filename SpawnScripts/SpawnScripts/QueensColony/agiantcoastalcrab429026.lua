--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429026.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429026.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:55 
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
	MovementLoopAddLocation(NPC, 38.75, -10.54, -60.81, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 31.98, -8.58, -68.28, 2, 0)
	MovementLoopAddLocation(NPC, 26.84, -9.38, -73.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.04, -8.09, -66.66, 2, 0)
	MovementLoopAddLocation(NPC, 24.44, -9.25, -65.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 29.51, -9.29, -61.17, 2, 0)
	MovementLoopAddLocation(NPC, 30.64, -10.22, -57.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 30.04, -9.12, -61.04, 2, 0)
	MovementLoopAddLocation(NPC, 26.86, -9.78, -74.22, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 24.76, -8.39, -72.03, 2, 0)
	MovementLoopAddLocation(NPC, 22.13, -9.31, -66.89, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 20.99, -9.6, -73.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 35.86, -8.85, -61.67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.51, -8.01, -63.89, 2, 0)
	MovementLoopAddLocation(NPC, 30.2, -8.43, -70.03, 2, 0)
	MovementLoopAddLocation(NPC, 26.3, -9.35, -73.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.65, -8.21, -71.69, 2, 0)
	MovementLoopAddLocation(NPC, 30.63, -10.14, -58.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.23, -9.25, -58.78, 2, 0)
	MovementLoopAddLocation(NPC, 35.11, -9.64, -69.3, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.05, -9.1, -64.33, 2, 0)
end


