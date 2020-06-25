--[[
        Script Name     :       SpawnScripts/QueensColony/agiantcoastalcrab428999.lua
	Script Purpose	:	Waypoint Path for agiantcoastalcrab428999.lua
	Script Author	:	Rylec
	Script Date	:	04-06-2020 05:02:46 
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
	MovementLoopAddLocation(NPC, 52.06, -9.82, -32.29, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 56.35, -8.32, -29.22, 2, 0)
	MovementLoopAddLocation(NPC, 58.04, -8.03, -26.09, 2, 0)
	MovementLoopAddLocation(NPC, 63.76, -9.5, -22.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 60.09, -8.49, -24.39, 2, 0)
	MovementLoopAddLocation(NPC, 59.42, -7.22, -26.43, 2, 0)
	MovementLoopAddLocation(NPC, 57.49, -7.32, -30.59, 2, 0)
	MovementLoopAddLocation(NPC, 57.07, -9.35, -34.3, 2, 0)
	MovementLoopAddLocation(NPC, 50.83, -11.25, -33.72, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 56.93, -9.89, -36.07, 2, 0)
	MovementLoopAddLocation(NPC, 60.49, -9.21, -35.82, 2, 0)
	MovementLoopAddLocation(NPC, 72.09, -10.07, -25.62, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.53, -9.11, -36.35, 2, 0)
	MovementLoopAddLocation(NPC, 60.12, -8.82, -35.29, 2, 0)
	MovementLoopAddLocation(NPC, 51.51, -11.26, -29.17, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 52.39, -10.47, -32.68, 2, 0)
	MovementLoopAddLocation(NPC, 49.67, -11.99, -32.15, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 53.88, -9.85, -30.9, 2, 0)
	MovementLoopAddLocation(NPC, 55.79, -8.68, -30.59, 2, 0)
	MovementLoopAddLocation(NPC, 57.66, -7.39, -29.32, 2, 0)
	MovementLoopAddLocation(NPC, 61.95, -7.47, -25.5, 2, 0)
	MovementLoopAddLocation(NPC, 63.31, -9.15, -22.99, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, 62.26, -7.46, -25.71, 2, 0)
	MovementLoopAddLocation(NPC, 59.85, -6.94, -27.77, 2, 0)
        MovementLoopAddLocation(NPC, 53.19, -10.02, -30.18, 2, math.random(16, 24))
end

