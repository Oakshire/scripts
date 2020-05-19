--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429018.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429018.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:38 
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
	MovementLoopAddLocation(NPC, 32.45, -9.63, -71.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 39.18, -10.5, -63.1, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 19.58, -9.86, -69.6, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 31.16, -9.07, -60.1, 2, 0)
	MovementLoopAddLocation(NPC, 32.18, -9.26, -59.05, 2, 0)
	MovementLoopAddLocation(NPC, 33.39, -10.24, -56.92, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 21.36, -9.14, -71.43, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 25.54, -9.18, -64.48, 2, 0)
	MovementLoopAddLocation(NPC, 26.83, -9.84, -61.21, 2, math.random(16, 24))
end


