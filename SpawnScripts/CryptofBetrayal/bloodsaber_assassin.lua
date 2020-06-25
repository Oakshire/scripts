--[[
	Script Name		:	bloodsaber_assasin.lua
	Script Purpose	:	Waypoint Path for bloodsaber_assasin.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:19:30 PM
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
	fuckit = math.random(0,20)
	fuckit = math.random(0,20)
	fuckit = math.random(0,20)
	fuckit = math.random(0,20)
	MovementLoopAddLocation(NPC, 49.77, -4.16, -140.11, 2, fuckit)
	MovementLoopAddLocation(NPC, 47.58, -0.15, -153.04, 2, 0)
	MovementLoopAddLocation(NPC, 52.44, -0.15, -155.83, 2, 0)
	MovementLoopAddLocation(NPC, 55.29, -0.16, -160.31, 2, 0)
	MovementLoopAddLocation(NPC, 70.02, -4.16, -160.06, 2, 0)
	MovementLoopAddLocation(NPC, 55.57, -0.16, -161.93, 2, 0)
	MovementLoopAddLocation(NPC, 52.45, -0.15, -166.39, 2, 0)
	MovementLoopAddLocation(NPC, 48.15, -0.15, -168.49, 2, 0)
	MovementLoopAddLocation(NPC, 47.87, -4.16, -183.14, 2, 0)
	MovementLoopAddLocation(NPC, 47.07, -0.15, -168.82, 2, 0)
	MovementLoopAddLocation(NPC, 42.33, -0.16, -165.73, 2, 0)
	MovementLoopAddLocation(NPC, 40.31, -0.16, -162.02, 2, 0)
	MovementLoopAddLocation(NPC, 15.28, -0.09, -161.49, 2, 0)
	MovementLoopAddLocation(NPC, 25.34, -0.04, -161.31, 2, 0)
	MovementLoopAddLocation(NPC, 40.41, -0.16, -159.26, 2, 0)
	MovementLoopAddLocation(NPC, 43.04, -0.15, -155.41, 2, 0)
	MovementLoopAddLocation(NPC, 46.88, -0.15, -153.84, 2, 0)
	MovementLoopAddLocation(NPC, 46.07, -4.16, -139.77, 2, 0)
	MovementLoopAddLocation(NPC, 46.88, -0.15, -153.84, 2, 0)
	MovementLoopAddLocation(NPC, 43.04, -0.15, -155.41, 2, 0)
	MovementLoopAddLocation(NPC, 40.41, -0.16, -159.26, 2, 0)
	MovementLoopAddLocation(NPC, 25.34, -0.04, -161.31, 2, 0)
	MovementLoopAddLocation(NPC, 15.28, -0.09, -161.49, 2, 0)
	MovementLoopAddLocation(NPC, 40.31, -0.16, -162.02, 2, 0)
	MovementLoopAddLocation(NPC, 42.33, -0.16, -165.73, 2, 0)
	MovementLoopAddLocation(NPC, 47.07, -0.15, -168.82, 2, 0)
	MovementLoopAddLocation(NPC, 47.87, -4.16, -183.14, 2, 0)
	MovementLoopAddLocation(NPC, 48.15, -0.15, -168.49, 2, 0)
	MovementLoopAddLocation(NPC, 52.45, -0.15, -166.39, 2, 0)
	MovementLoopAddLocation(NPC, 55.57, -0.16, -161.93, 2, 0)
	MovementLoopAddLocation(NPC, 70.02, -4.16, -160.06, 2, 0)
	MovementLoopAddLocation(NPC, 55.29, -0.16, -160.31, 2, 0)
	MovementLoopAddLocation(NPC, 52.44, -0.15, -155.83, 2, 0)
	MovementLoopAddLocation(NPC, 47.58, -0.15, -153.04, 2, 0)
	MovementLoopAddLocation(NPC, 49.77, -4.16, -140.11, 2, math.random(0,20))
end


