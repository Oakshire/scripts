--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429019.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429019.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:40 
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
	MovementLoopAddLocation(NPC, 26.88, -9.86, -62.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 29.37, -9.32, -61.26, 2, 0)
	MovementLoopAddLocation(NPC, 30.14, -9.24, -60.58, 2, 0)
	MovementLoopAddLocation(NPC, 32.62, -9.02, -59.37, 2, 0)
	MovementLoopAddLocation(NPC, 33.25, -10.13, -57.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 33.25, -8.95, -59.46, 2, 0)
	MovementLoopAddLocation(NPC, 31.46, -8.33, -60.98, 2, 0)
	MovementLoopAddLocation(NPC, 25.26, -9.29, -64.57, 2, 0)
	MovementLoopAddLocation(NPC, 23.94, -9.01, -66.29, 2, 0)
	MovementLoopAddLocation(NPC, 19.75, -9.92, -71.94, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.45, -9.02, -66.58, 2, 0)
	MovementLoopAddLocation(NPC, 25.26, -8.93, -65.32, 2, 0)
	MovementLoopAddLocation(NPC, 26.43, -9.91, -61.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 31.46, -9.54, -72.47, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 29.56, -8.8, -72.18, 2, 0)
	MovementLoopAddLocation(NPC, 27.86, -8.7, -72.29, 2, 0)
	MovementLoopAddLocation(NPC, 19.99, -9.78, -72.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 27.36, -9.21, -62.8, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 25.76, -8.56, -65.78, 2, 0)
	MovementLoopAddLocation(NPC, 23.89, -8.72, -66.71, 2, 0)
	MovementLoopAddLocation(NPC, 20.03, -9.94, -72.6, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.56, -9.49, -65.88, 2, 0)
	MovementLoopAddLocation(NPC, 25.84, -8.83, -64.87, 2, 0)
end


