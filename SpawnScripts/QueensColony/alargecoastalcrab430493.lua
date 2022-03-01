--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430493.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430493.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:54 
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
	MovementLoopAddLocation(NPC, -72.62, -8.05, 66.13, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -93.46, -9.12, 41.28, 2, 0)
	MovementLoopAddLocation(NPC, -93.35, -9.06, 41.52, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.99, -8.41, 45.17, 2, 0)
	MovementLoopAddLocation(NPC, -90.73, -8.22, 65.24, 2, 0)
	MovementLoopAddLocation(NPC, -91.37, -8.21, 71.24, 2, 0)
	MovementLoopAddLocation(NPC, -93.37, -8.7, 74.92, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.63, -8.2, 66.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.55, -7.48, 86.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.95, -9.33, 58, 2, 0)
--	MovementLoopAddLocation(NPC, -95.98, -9.33, 58.09, 2, 0)
	MovementLoopAddLocation(NPC, -95.98, -9.33, 58.09, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.15, -9.59, 62.26, 2, 0)
	MovementLoopAddLocation(NPC, -97.51, -9.62, 67.11, 2, 0)
--	MovementLoopAddLocation(NPC, -97.37, -9.75, 74.82, 2, 0)
	MovementLoopAddLocation(NPC, -97.33, -9.75, 74.83, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -57.4, -8.96, 83.23, 2, 0)
	MovementLoopAddLocation(NPC, -57.55, -8.9, 83.14, 2, math.random(16, 24))
end


