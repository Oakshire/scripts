--[[
	Script Name		:	ire_minion12.lua
	Script Purpose	:	Waypoint Path for ire_minion12.lua
	Script Author	:	Auto Generated
	Script Date		:	06/08/2020 12:35:21 PM
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
	MovementLoopAddLocation(NPC, 90.39, 6.85, 27.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.41, 6.85, 22.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.53, 6.86, 27.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 86.41, 6.88, 21.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.42, 6.86, 23.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.54, 6.82, 24.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.63, 6.86, 24.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.36, 6.86, 26.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.01, 6.89, 19.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.43, 7.22, 27.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.01, 6.89, 19.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.36, 6.86, 26.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.63, 6.86, 24.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.54, 6.82, 24.26, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.42, 6.86, 23.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 86.41, 6.88, 21.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.53, 6.86, 27.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.41, 6.85, 22.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.39, 6.85, 27.41, 2, math.random(0,5))
end


