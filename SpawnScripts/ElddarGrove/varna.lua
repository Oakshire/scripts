--[[
	Script Name		:	varna.lua
	Script Purpose	:	Waypoint Path for varna.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:58 PM
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
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 584.56, -18.17, -411.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 617.12, -15.75, -407.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.63, -11.51, -399.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.41, -12.48, -372.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 642.47, -20.05, -313.95, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.41, -12.48, -372.51, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.63, -11.51, -399.8, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 617.12, -15.75, -407.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 584.56, -18.17, -411.61, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 576.58, -18.16, -412.9, 2, math.random(0,8))
end


