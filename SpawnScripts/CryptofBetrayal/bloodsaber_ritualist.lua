--[[
	Script Name		:	bloodsaber_ritualist.lua
	Script Purpose	:	Waypoint Path for bloodsaber_ritualist.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 02:40:16 PM
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
	MovementLoopAddLocation(NPC, 28.4, -0.16, -156.42, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 30, -0.16, -166.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 34.9, -0.16, -156.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 34.77, -0.16, -166.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 26.09, -0.16, -161.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 40.77, 0.02, -161.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 25.42, -0.16, -166.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 40.77, 0.02, -161.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 26.09, -0.16, -161.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 34.77, -0.16, -166.04, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 34.9, -0.16, -156.03, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 30, -0.16, -166.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 28.4, -0.16, -156.42, 2, math.random(0,20))
end


