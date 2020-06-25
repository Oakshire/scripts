--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430443.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430443.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:40 
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
	MovementLoopAddLocation(NPC, -77.59, -8.27, 33.59, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -63.89, -7.95, 53.34, 2, 0)
	MovementLoopAddLocation(NPC, -63.93, -7.93, 53.31, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -85.06, -9.14, 32.57, 2, 0)
	MovementLoopAddLocation(NPC, -84.98, -9.12, 32.59, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -57.62, -8.99, 42.79, 2, 0)
	MovementLoopAddLocation(NPC, -57.64, -8.99, 42.76, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -60.59, -8.95, 36.63, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.79, -8.53, 35.61, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -66.13, -8.77, 31.54, 2, 0)
	MovementLoopAddLocation(NPC, -66.23, -8.74, 31.53, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -70.36, -8.4, 31.66, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -77.61, -8.28, 33.55, 2, 0)
end


