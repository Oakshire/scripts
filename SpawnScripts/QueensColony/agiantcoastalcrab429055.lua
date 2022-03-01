--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab429055.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab429055.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:02:50 
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
	MovementLoopAddLocation(NPC, 53.41, -10.17, -28.44, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 57.96, -7.37, -28.04, 2, 0)
	MovementLoopAddLocation(NPC, 73.02, -10.23, -27.17, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 68.11, -9.37, -24.25, 2, 0)
	MovementLoopAddLocation(NPC, 66.34, -7.93, -26.33, 2, 0)
	MovementLoopAddLocation(NPC, 64.18, -6.92, -32.5, 2, 0)
	MovementLoopAddLocation(NPC, 62.14, -7.82, -34.85, 2, 0)
	MovementLoopAddLocation(NPC, 51.56, -10.60, -30.4, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 57.52, -7.5, -28.49, 2, 0)
	MovementLoopAddLocation(NPC, 63.55, -13.84, -18.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 67.81, -9.78, -23.35, 2, 0)
	MovementLoopAddLocation(NPC, 71.87, -9.89, -25.96, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 64.75, -7.24, -33.08, 2, 0)
	MovementLoopAddLocation(NPC, 61.76, -7.38, -34.07, 2, 0)
	MovementLoopAddLocation(NPC, 52.12, -10.52, -31.17, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 51.03, -12.4, -27.57, 2, math.random(16, 24))
end


