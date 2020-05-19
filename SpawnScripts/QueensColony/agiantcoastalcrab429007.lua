--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429007.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429007.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:03:10 
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
	MovementLoopAddLocation(NPC, 69.4, -10.04, -36.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 66.91, -10.49, -39.77, 2, 0)
	MovementLoopAddLocation(NPC, 64.32, -10.65, -40.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 58.38, -10.2, -35.77, 2, 0)
	MovementLoopAddLocation(NPC, 59.47, -6.79, -32.05, 2, 0)
	MovementLoopAddLocation(NPC, 63.32, -7.59, -25.2, 2, 0)
	MovementLoopAddLocation(NPC, 67.85, -9.91, -23.11, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.45, -9.55, -36.74, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 71.08, -9.12, -28.06, 2, 0)
	MovementLoopAddLocation(NPC, 69.22, -10.22, -23.05, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.63, -10.37, -37.71, 2, math.random(16, 24))
end


