--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430600.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430600.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:32 
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
	MovementLoopAddLocation(NPC, -93.21, -8.69, 55.83, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.27, -8.31, 63.01, 2, 0)
	MovementLoopAddLocation(NPC, -90.16, -8.11, 65.6, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.13, -7.21, 77.41, 2, 0)
	MovementLoopAddLocation(NPC, -75.46, -8.05, 84.77, 2, 0)
	MovementLoopAddLocation(NPC, -67.2, -7.51, 88.9, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -96.71, -9.73, 78.12, 2, 0)
	MovementLoopAddLocation(NPC, -96.67, -9.72, 78.14, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -66.21, -7.49, 85.83, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.68, -8.99, 59.48, 2, 0)
--	MovementLoopAddLocation(NPC, -97.3, -9.74, 58.19, 2, 0)
	MovementLoopAddLocation(NPC, -97.3, -9.73, 58.35, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.28, -9.56, 65.73, 2, 0)
	MovementLoopAddLocation(NPC, -93.94, -8.81, 70.75, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.68, -9.08, 78.35, 2, 0)
	MovementLoopAddLocation(NPC, -93.46, -8.74, 77.4, 12, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.68, -8.01, 60, 2, math.random(16, 24))
end


