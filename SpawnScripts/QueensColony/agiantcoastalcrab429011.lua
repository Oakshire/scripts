--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429011.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429011.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:20 
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
	MovementLoopAddLocation(NPC, 20.15, -10.15, -66.6, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 24.07, -9.79, -74.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 35.9, -10.94, -55.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 34.6, -9.27, -58.01, 2, 0)
	MovementLoopAddLocation(NPC, 23.75, -10.48, -76.41, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.43, -8.18, -69.62, 2, 0)
	MovementLoopAddLocation(NPC, 23.76, -8.16, -67.91, 2, 0)
	MovementLoopAddLocation(NPC, 23.28, -9.78, -65.21, 2, 0)
	MovementLoopAddLocation(NPC, 29.4, -9.71, -59.89, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 28.57, -7.15, -66.4, 2, 0)
	MovementLoopAddLocation(NPC, 35.37, -9.07, -66.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 23.72, -8.15, -68.31, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 38.9, -10.63, -67.43, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 35.26, -9.02, -66.32, 2, 0)
	MovementLoopAddLocation(NPC, 29.1, -9.83, -59.76, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 29.58, -9.24, -61.25, 2, 0)
	MovementLoopAddLocation(NPC, 25.81, -8.49, -65.96, 2, 0)
	MovementLoopAddLocation(NPC, 23.5, -8.92, -66.69, 2, 0)
end


