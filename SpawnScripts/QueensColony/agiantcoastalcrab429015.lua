--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429015.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429015.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:32 
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
	MovementLoopAddLocation(NPC, 29.86, -10.4, -74.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 19.82, -10.22, -66.53, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.01, -9.04, -66.84, 2, 0)
	MovementLoopAddLocation(NPC, 35.53, -10.14, -56.85, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.07, -9.17, -59.06, 2, 0)
	MovementLoopAddLocation(NPC, 36.62, -9.58, -66.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 32.45, -7.63, -61.62, 2, 0)
	MovementLoopAddLocation(NPC, 28.9, -9.42, -61.49, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 20.53, -9.73, -68.07, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.37, -8.94, -63.66, 2, 0)
	MovementLoopAddLocation(NPC, 31.34, -9.03, -60.1, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 29.46, -8.54, -62.09, 2, 0)
end


