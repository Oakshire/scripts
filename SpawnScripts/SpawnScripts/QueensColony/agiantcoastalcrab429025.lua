--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429025.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429025.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:52 
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
	MovementLoopAddLocation(NPC, 20.32, -10.86, -75.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 20.48, -9.21, -71.54, 2, 0)
	MovementLoopAddLocation(NPC, 25.2, -9.1, -65.04, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 25.77, -8.58, -65.71, 2, 0)
	MovementLoopAddLocation(NPC, 25.82, -7.71, -68.06, 2, 0)
	MovementLoopAddLocation(NPC, 22.43, -8.99, -72.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.9, -8.96, -72.81, 2, 0)
	MovementLoopAddLocation(NPC, 26.22, -9.17, -73.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.47, -8.16, -71.65, 2, 0)
	MovementLoopAddLocation(NPC, 24.05, -8.04, -68.54, 2, 0)
	MovementLoopAddLocation(NPC, 23.53, -9.1, -66.43, 2, 0)
	MovementLoopAddLocation(NPC, 23.2, -10.24, -64.85, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 20.55, -9.55, -69.31, 2, 0)
	MovementLoopAddLocation(NPC, 21.18, -9.84, -73.86, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 28.48, -7.89, -70.02, 2, 0)
	MovementLoopAddLocation(NPC, 35.46, -9.55, -68.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.24, -10.2, -63.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.69, -9.26, -66.1, 2, 0)
end


