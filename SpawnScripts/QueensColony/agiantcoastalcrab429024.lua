--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429024.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429024.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:50 
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
	MovementLoopAddLocation(NPC, 24.15, -8.88, -66.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.15, -9.03, -68.24, 2, 0)
	MovementLoopAddLocation(NPC, 36.55, -9.88, -68.36, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.03, -9.4, -66.99, 2, 0)
	MovementLoopAddLocation(NPC, 35.18, -8.45, -61.36, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.02, -10.35, -64.81, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 30.81, -9.86, -58.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 28.96, -9.39, -61.52, 2, 0)
	MovementLoopAddLocation(NPC, 27.87, -9.17, -62.53, 2, 0)
	MovementLoopAddLocation(NPC, 23.78, -9.21, -66.11, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 30.39, -8.78, -71.61, 2, 0)
	MovementLoopAddLocation(NPC, 31.34, -10.47, -74.75, 2, math.random(16, 24))
end


