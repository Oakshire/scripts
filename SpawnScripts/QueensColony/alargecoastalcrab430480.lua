--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430480.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430480.lua
	Script Author	:	Rylec
	Script Date	:	11-16-2019 08:13:06 
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
	MovementLoopAddLocation(NPC, -118.55, -9.30, 20.93, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -113.04, -8.1, 20.69, 2, 0)
	MovementLoopAddLocation(NPC, -107.35, -8, 20.57, 2, 0)
	MovementLoopAddLocation(NPC, -103.23, -8.13, 21.78, 2, 0)
--	MovementLoopAddLocation(NPC, -97.19, -9.82, 21.78, 2, 0)
	MovementLoopAddLocation(NPC, -97.24, -9.77, 21.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.11, -8.91, 21.83, 2, 0)
--	MovementLoopAddLocation(NPC, -118.73, -9.87, 20.81, 2, 0)
	MovementLoopAddLocation(NPC, -118.68, -9.82, 20.86, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -103.42, -8.73, 32.58, 2, 0)
--	MovementLoopAddLocation(NPC, -105.18, -9.49, 36.47, 2, 0)
	MovementLoopAddLocation(NPC, -105.23, -9.54, 36.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -105.59, -9.05, 34.6, 2, 0)
--	MovementLoopAddLocation(NPC, -98.1, -9.76, 21.93, 2, 0)
	MovementLoopAddLocation(NPC, -98.15, -9.71, 21.88, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -100.67, -9.39, 20.86, 2, 0)
	MovementLoopAddLocation(NPC, -112.02, -7.04, 21.54, 2, 0)
--	MovementLoopAddLocation(NPC, -118.6, -9.35, 20.88, 2, 0)
end


