--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429022.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429022.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:47 
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
	MovementLoopAddLocation(NPC, 26.4, -9.48, -73.78, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 28.02, -8.71, -72.29, 2, 0)
	MovementLoopAddLocation(NPC, 28.2, -7.83, -69.93, 2, 0)
	MovementLoopAddLocation(NPC, 30.85, -9.6, -59.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 22.02, -9.07, -72.84, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.37, -9.12, -61.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 30.48, -7.78, -67.73, 2, 0)
	MovementLoopAddLocation(NPC, 27.89, -7.93, -70.59, 2, 0)
	MovementLoopAddLocation(NPC, 27.1, -8.59, -72.27, 2, math.random(16, 24))
end


