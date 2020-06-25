--[[
	Script Name		:	deathly_scarab10.lua
	Script Purpose	:	Waypoint Path for deathly_scarab10.lua
	Script Author	:	Devn00b
	Script Date		:	06/08/2020 11:54:53 PM
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
	MovementLoopAddLocation(NPC, 29.23, -0.09, 2.21, 2, 0)
	MovementLoopAddLocation(NPC, 37.86, 0.35, 2.6, 2, 0)
	MovementLoopAddLocation(NPC, 43.6, -0.2, -6.13, 2, 0)
	MovementLoopAddLocation(NPC, 42.06, -0.21, -30.16, 2, 0)
	MovementLoopAddLocation(NPC, 70.03, -0.07, -31.78, 2, 0)
	MovementLoopAddLocation(NPC, 40.67, -0.21, -30.2, 2, 0)
	MovementLoopAddLocation(NPC, 31.83, -0.13, -31.18, 2, 0)
	MovementLoopAddLocation(NPC, 15.47, 0.43, -47.31, 2, 0)
	MovementLoopAddLocation(NPC, 9.54, -0.18, -46.26, 2, 0)
	MovementLoopAddLocation(NPC, 2.53, -0.14, -28.56, 2, 0)
	MovementLoopAddLocation(NPC, -5.34, -0.1, -27.31, 2, 0)
	MovementLoopAddLocation(NPC, -13.9, -0.15, -37.57, 2, 0)
	MovementLoopAddLocation(NPC, -13.53, 0.45, -44.48, 2, 0)
	MovementLoopAddLocation(NPC, -4.43, -0.07, -53.93, 2, 0)
	MovementLoopAddLocation(NPC, -4.6, -0.09, -61.82, 2, 0)
	MovementLoopAddLocation(NPC, -4.43, -0.07, -53.93, 2, 0)
	MovementLoopAddLocation(NPC, -13.53, 0.45, -44.48, 2, 0)
	MovementLoopAddLocation(NPC, -13.9, -0.15, -37.57, 2, 0)
	MovementLoopAddLocation(NPC, -5.34, -0.1, -27.31, 2, 0)
	MovementLoopAddLocation(NPC, 2.53, -0.14, -28.56, 2, 0)
	MovementLoopAddLocation(NPC, 9.54, -0.18, -46.26, 2, 0)
	MovementLoopAddLocation(NPC, 15.47, 0.43, -47.31, 2, 0)
	MovementLoopAddLocation(NPC, 31.83, -0.13, -31.18, 2, 0)
	MovementLoopAddLocation(NPC, 40.67, -0.21, -30.2, 2, 0)
	MovementLoopAddLocation(NPC, 70.03, -0.07, -31.78, 2, 0)
	MovementLoopAddLocation(NPC, 42.06, -0.21, -30.16, 2, 0)
	MovementLoopAddLocation(NPC, 43.6, -0.2, -6.13, 2, 0)
	MovementLoopAddLocation(NPC, 37.86, 0.35, 2.6, 2, 0)
	MovementLoopAddLocation(NPC, 29.23, -0.09, 2.21, 2, 0)
end


