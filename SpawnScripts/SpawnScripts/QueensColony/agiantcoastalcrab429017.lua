--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429017.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429017.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:36 
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
	MovementLoopAddLocation(NPC, 36.51, -9.44, -64.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 27.93, -7.78, -69.67, 2, 0)
	MovementLoopAddLocation(NPC, 25.32, -8.22, -71.99, 2, 0)
	MovementLoopAddLocation(NPC, 21.06, -9.17, -71.45, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 26.67, -9.78, -62.29, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 22, -8.96, -68.04, 2, 0)
	MovementLoopAddLocation(NPC, 21.34, -9.37, -68.92, 2, 0)
	MovementLoopAddLocation(NPC, 19.89, -9.66, -71.72, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 22.54, -8.71, -68.39, 2, 0)
	MovementLoopAddLocation(NPC, 36.82, -9.54, -58.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.19, -7.9, -64.3, 2, 0)
	MovementLoopAddLocation(NPC, 32.48, -9.45, -71.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 36.69, -9.61, -66.61, 2, 0)
end


