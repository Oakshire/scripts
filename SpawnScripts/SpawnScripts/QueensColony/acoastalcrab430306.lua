--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430306.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430306.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:28 
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
	MovementLoopAddLocation(NPC, -95.86, -9.24, 72.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.07, -9.53, 68.9, 2, 0)
	MovementLoopAddLocation(NPC, -97.46, -9.72, 60.89, 2, 0)
	MovementLoopAddLocation(NPC, -95.57, -9.33, 53.75, 2, 0)
	MovementLoopAddLocation(NPC, -95.13, -9.53, 47.75, 2, 0)
	MovementLoopAddLocation(NPC, -95.01, -9.23, 44.57, 2, 0)
--	MovementLoopAddLocation(NPC, -96.12, -9.62, 42.91, 2, 0)
	MovementLoopAddLocation(NPC, -96.09, -9.61, 42.93, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.99, -8.43, 44.48, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -59.78, -8.09, 80.39, 2, 0)
--	MovementLoopAddLocation(NPC, -57.12, -8.73, 82.07, 2, 0)
	MovementLoopAddLocation(NPC, -57.21, -8.69, 82, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -96.11, -9.54, 52.62, 2, 0)
	MovementLoopAddLocation(NPC, -96.09, -9.53, 52.65, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -62.02, -8.35, 70.62, 2, 0)
	MovementLoopAddLocation(NPC, -62.07, -8.35, 70.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.43, -7.96, 55.38, 2, 0)
	MovementLoopAddLocation(NPC, -93.33, -8.73, 52.72, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.68, -8.38, 54.14, 2, 0)
	MovementLoopAddLocation(NPC, -87.55, -7.57, 56.35, 2, 0)
--	MovementLoopAddLocation(NPC, -54.46, -9.1, 80.46, 2, 0)
	MovementLoopAddLocation(NPC, -54.56, -9.06, 80.44, 2, math.random(16, 24))
end


