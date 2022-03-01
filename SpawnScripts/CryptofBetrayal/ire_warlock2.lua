--[[
	Script Name		:	ire_warlock2.lua
	Script Purpose	:	Waypoint Path for ire_warlock2.lua
	Script Author	:	Devn00b
	Script Date		:	06/09/2020 12:48:36 AM
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
	MovementLoopAddLocation(NPC, 26.74, -0.22, -45.08, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.03, -0.23, -43.79, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.33, -0.17, -47.25, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.47, -0.2, -42.7, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 34.35, -0.17, -44.71, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.66, -0.17, -42.18, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.49, -0.16, -46.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31, -0.17, -47.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.66, -0.17, -45.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.09, -0.23, -43.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.16, -0.17, -43.83, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.45, -0.17, -45.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.25, -0.16, -44.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.89, -0.15, -46.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 30.05, -0.19, -42.76, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.37, -0.15, -47.55, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.85, -0.17, -45.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.65, -0.17, -46.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.85, -0.17, -45.45, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.37, -0.15, -47.55, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 30.05, -0.19, -42.76, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.89, -0.15, -46.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.25, -0.16, -44.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.45, -0.17, -45.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.16, -0.17, -43.83, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.09, -0.23, -43.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.66, -0.17, -45.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31, -0.17, -47.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.49, -0.16, -46.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.66, -0.17, -42.18, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 34.35, -0.17, -44.71, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.47, -0.2, -42.7, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.33, -0.17, -47.25, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.03, -0.23, -43.79, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 26.74, -0.22, -45.08, 2, math.random(0,15))
end


