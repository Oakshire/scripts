--[[
	Script Name		:	infected_grave_scorpius3.lua
	Script Purpose	:	Waypoint Path for infected_grave_scorpius3.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:08:19 PM
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
	MovementLoopAddLocation(NPC, 223.66, -6.8, -81.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 216.39, -6.79, -75.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 211.18, -6.85, -79.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 207.39, -7.08, -89.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 199.23, -6.97, -90, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 198.89, -6.3, -69.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 198.73, -7, -55.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 215.03, -6.95, -55.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 232.82, -6.44, -39.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 246.21, -6.97, -39.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 245.27, -6.94, -54.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 236.66, -6.49, -62.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 236.8, -7.02, -74.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 236.66, -6.49, -62.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 245.27, -6.94, -54.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 246.21, -6.97, -39.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 232.82, -6.44, -39.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 215.03, -6.95, -55.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 198.73, -7, -55.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 198.89, -6.3, -69.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 199.23, -6.97, -90, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 207.39, -7.08, -89.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 211.18, -6.85, -79.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 216.39, -6.79, -75.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 223.66, -6.8, -81.49, 2, math.random(0,5))
end


