--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430593.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430593.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:07 
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
	MovementLoopAddLocation(NPC, -60.87, -8.7, 38.62, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.58, -8.23, 44.86, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -69.19, -8.51, 31.62, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.31, -8.52, 42.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -62.29, -8.46, 42.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.01, -8.5, 34.46, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -59.41, -8.77, 42.68, 2, 0)
	MovementLoopAddLocation(NPC, -59.46, -8.77, 42.66, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -90.26, -9.26, 37.57, 2, 0)
	MovementLoopAddLocation(NPC, -90.18, -9.24, 37.57, 2, math.random(16, 24))
end


