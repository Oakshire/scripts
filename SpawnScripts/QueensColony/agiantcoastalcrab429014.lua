--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429014.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429014.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:27 
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
	MovementLoopAddLocation(NPC, 28.75, -9.92, -59.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 32.84, -7.37, -62.83, 2, 0)
	MovementLoopAddLocation(NPC, 35.09, -9.02, -66.85, 2, 0)
	MovementLoopAddLocation(NPC, 38.7, -10.59, -67.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 32.03, -8.64, -68.35, 2, 0)
	MovementLoopAddLocation(NPC, 30.57, -8.83, -71.53, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 31.98, -8.53, -68.2, 2, 0)
	MovementLoopAddLocation(NPC, 34.19, -8.64, -66.04, 2, 0)
	MovementLoopAddLocation(NPC, 35.51, -10.11, -56.88, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21, -9.48, -68.56, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.17, -8.41, -65.72, 2, 0)
	MovementLoopAddLocation(NPC, 34.51, -9.11, -58.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.68, -8.73, -64.01, 2, 0)
	MovementLoopAddLocation(NPC, 25.42, -8.74, -65.67, 2, 0)
	MovementLoopAddLocation(NPC, 23.82, -8.72, -66.76, 2, 0)
	MovementLoopAddLocation(NPC, 20.97, -9.71, -67.05, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.53, -8.94, -66.65, 2, 0)
	MovementLoopAddLocation(NPC, 25.03, -9.14, -65.14, 2, 0)
	MovementLoopAddLocation(NPC, 27.32, -10.06, -58.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.95, -8.87, -63.63, 2, 0)
	MovementLoopAddLocation(NPC, 25.55, -9.03, -64.78, 2, 0)
	MovementLoopAddLocation(NPC, 20.35, -10.07, -67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 20.89, -9.22, -70.55, 2, 0)
	MovementLoopAddLocation(NPC, 23.96, -9.78, -74.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 22.64, -8.94, -72.43, 2, 0)
	MovementLoopAddLocation(NPC, 22.42, -8.73, -68.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.49, -9.14, -73.13, 2, math.random(16, 24))
end

