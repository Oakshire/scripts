--[[
	Script Name		:	ire_minion15.lua
	Script Purpose	:	Waypoint Path for ire_minion15.lua
	Script Author	:	Devn00b
	Script Date		:	06/09/2020 12:48:41 AM
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
	MovementLoopAddLocation(NPC, 32.65, -0.17, -46.51, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 30.5, -0.16, -48.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 26.63, -0.19, -45.49, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.48, -0.15, -46.33, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.06, -0.22, -44.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.63, -0.19, -42.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 34.85, -0.17, -45.05, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.09, -0.17, -45.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.86, -0.15, -45.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.17, -0.17, -43.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.24, -0.22, -42.91, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.56, -0.17, -42.41, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 27.33, -0.16, -46.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.29, -0.17, -47.99, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.61, -0.17, -41.98, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.11, -0.16, -45.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29, -0.21, -43.46, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.31, -0.15, -46.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.86, -0.17, -45.27, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.34, -0.22, -42.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.86, -0.17, -45.27, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.31, -0.15, -46.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29, -0.21, -43.46, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.11, -0.16, -45.62, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.61, -0.17, -41.98, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.29, -0.17, -47.99, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 27.33, -0.16, -46.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 31.56, -0.17, -42.41, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.24, -0.22, -42.91, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.17, -0.17, -43.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.86, -0.15, -45.52, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 33.09, -0.17, -45.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 34.85, -0.17, -45.05, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.63, -0.19, -42.37, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.06, -0.22, -44.32, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 29.48, -0.15, -46.33, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 26.63, -0.19, -45.49, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 30.5, -0.16, -48.77, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 32.65, -0.17, -46.51, 2, math.random(0,15))
end


