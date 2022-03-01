--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429016.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429016.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:34 
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
	MovementLoopAddLocation(NPC, 33.12, -10.17, -57.3, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 33.1, -7.56, -61.94, 2, 0)
	MovementLoopAddLocation(NPC, 31.81, -7.25, -65.08, 2, 0)
	MovementLoopAddLocation(NPC, 32.13, -9.13, -70.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 27.28, -8.84, -63.46, 2, 0)
	MovementLoopAddLocation(NPC, 25.48, -10.05, -62.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 32.09, -7.48, -65.92, 2, 0)
	MovementLoopAddLocation(NPC, 36.73, -9.62, -63.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.04, -8.62, -66.18, 2, 0)
	MovementLoopAddLocation(NPC, 20.30, -9.36, -71.94, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 33.5, -10.48, -73.34, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 33.32, -10.18, -57.14, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.99, -9.6, -58.82, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 31.67, -8.5, -60.69, 2, 0)
	MovementLoopAddLocation(NPC, 28.13, -9.11, -62.54, 2, 0)
	MovementLoopAddLocation(NPC, 26.59, -9.97, -61.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 27, -8.97, -63.43, 2, 0)
	MovementLoopAddLocation(NPC, 25.52, -8.68, -65.71, 2, 0)
	MovementLoopAddLocation(NPC, 23.16, -8.94, -66.87, 2, 0)
	MovementLoopAddLocation(NPC, 21.99, -9, -67.8, 2, 0)
	MovementLoopAddLocation(NPC, 19.68, -9.98, -71.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.26, -9.33, -69.22, 2, 0)
	MovementLoopAddLocation(NPC, 27.93, -8.68, -63.29, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 28.55, -7.84, -69.34, 2, 0)
	MovementLoopAddLocation(NPC, 31.06, -8.73, -70.18, 2, 0)
	MovementLoopAddLocation(NPC, 32.48, -9.83, -72.12, 2, math.random(16, 24))
end

