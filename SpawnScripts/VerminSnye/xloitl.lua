--[[
	Script Name		:	xloitl.lua
	Script Purpose	:	Waypoint Path for xloitl.lua
	Script Author	:	Devn00b
	Script Date		:	06/12/2020 07:06:55 PM
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
	MovementLoopAddLocation(NPC, 26.05, -0.08, -198.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 22.72, -0.08, -195.87, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 23.25, -0.08, -198.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 20.32, -0.08, -200.07, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.42, -0.08, -200.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.32, -0.08, -203.21, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 22.98, -0.08, -202.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 23.68, -0.08, -205.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 25.62, -0.08, -202.86, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 27.05, -0.08, -202.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.25, -0.08, -202.17, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.4, -0.08, -198.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 25.67, -0.08, -198.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 27.26, -0.08, -196.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 25.67, -0.08, -198.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.4, -0.08, -198.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 28.25, -0.08, -202.17, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 27.05, -0.08, -202.22, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 25.62, -0.08, -202.86, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 23.68, -0.08, -205.03, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 22.98, -0.08, -202.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.32, -0.08, -203.21, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 16.42, -0.08, -200.95, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 20.32, -0.08, -200.07, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 23.25, -0.08, -198.16, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 22.72, -0.08, -195.87, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 26.05, -0.08, -198.85, 2, math.random(0,15))
end


