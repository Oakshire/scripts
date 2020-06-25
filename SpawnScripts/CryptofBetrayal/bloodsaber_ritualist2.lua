--[[
	Script Name		:	bloodsaber_ritualist2.lua
	Script Purpose	:	Waypoint Path for bloodsaber_ritualist2.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 02:40:22 PM
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
	MovementLoopAddLocation(NPC, 32.98, -0.16, -165.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 31.39, -0.16, -156.17, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 31.17, -0.16, -166.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 25.23, -0.16, -155.38, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 37.32, -0.16, -166.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 26.7, -0.16, -160.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 39.35, -0.16, -159.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 26.7, -0.16, -160.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 37.32, -0.16, -166.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 25.23, -0.16, -155.38, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 31.17, -0.16, -166.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 31.39, -0.16, -156.17, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 32.98, -0.16, -165.33, 2, math.random(0,20))
end


