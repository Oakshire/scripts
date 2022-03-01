--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429002.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429002.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:02:59 
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
	MovementLoopAddLocation(NPC, 56.1, -9.35, -26.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.14, -7.69, -31.22, 2, 0)
	MovementLoopAddLocation(NPC, 70.05, -9.02, -32.66, 2, 0)
	MovementLoopAddLocation(NPC, 71.2, -9.91, -34.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.88, -9.99, -34.79, 2, 0)
	MovementLoopAddLocation(NPC, 54.57, -10.29, -34.96, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.67, -9.89, -34.45, 2, 0)
	MovementLoopAddLocation(NPC, 55.95, -10.25, -35.86, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 55.96, -9.53, -33.8, 2, 0)
	MovementLoopAddLocation(NPC, 56.23, -8.36, -31.12, 2, 0)
	MovementLoopAddLocation(NPC, 59.31, -8.79, -24.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 53.27, -11.34, -27.07, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 54.06, -10.15, -27.91, 2, 0)
	MovementLoopAddLocation(NPC, 55.2, -9.17, -30.55, 2, 0)
	MovementLoopAddLocation(NPC, 54.23, -10.43, -35.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 56.34, -9.64, -34.27, 2, 0)
end


