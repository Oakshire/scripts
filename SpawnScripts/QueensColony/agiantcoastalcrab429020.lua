--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429020.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429020.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:43 
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
	MovementLoopAddLocation(NPC, 20.19, -9.7, -72.44, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.94, -8.06, -68.81, 2, 0)
	MovementLoopAddLocation(NPC, 27.5, -9.09, -62.9, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.77, -9.21, -67.31, 2, 0)
	MovementLoopAddLocation(NPC, 20.9, -9.18, -71.67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.66, -9.22, -67.7, 2, 0)
	MovementLoopAddLocation(NPC, 36.61, -9.59, -63.6, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21, -9.57, -67.93, 2, 0)
	MovementLoopAddLocation(NPC, 21.97, -8.83, -70.4, 2, 0)
	MovementLoopAddLocation(NPC, 23.91, -8.98, -72.87, 2, 0)
	MovementLoopAddLocation(NPC, 33.05, -10.41, -73.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 31.88, -9.13, -71.13, 2, 0)
	MovementLoopAddLocation(NPC, 31.63, -8.76, -69.4, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23, -8.44, -67.69, 2, 0)
end


