--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430496.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430496.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:44:05 
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
	MovementLoopAddLocation(NPC, -61.91, -8.95, 35.55, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -60.39, -8.81, 37.97, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -63.16, -8.71, 35.25, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -56.23, -9.56, 37.19, 2, 0)
	MovementLoopAddLocation(NPC, -56.29, -9.55, 37.21, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -66.48, -7.59, 39.92, 2, 0)
--	MovementLoopAddLocation(NPC, -95.83, -9.6, 45.7, 2, 0)
	MovementLoopAddLocation(NPC, -95.75, -9.56, 45.71, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -55.13, -9.66, 41.28, 2, 0)
	MovementLoopAddLocation(NPC, -55.17, -9.65, 41.25, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -63.94, -8.76, 34.28, 2, 0)
	MovementLoopAddLocation(NPC, -63.85, -8.77, 34.33, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -61.96, -8.96, 35.46, 2, 0)
end


