--[[
	Script Name		:	venomous_keeper.lua
	Script Purpose	:	Waypoint Path for venomous_keeper.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:48:29 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -115.94, 0, -198.46, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.69, 0, -208.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -113.12, 0, -204.54, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.81, 0, -199.14, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.84, 0, -208.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.23, 0, -208.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -97.15, 0, -191.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -97.75, 0, -203.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.45, 0, -207.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.49, 0, -207.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.5, 0, -199.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -108.85, 0, -202.39, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.89, 0, -206.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.1, 0, -200.45, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -113.37, 0, -208.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -112.38, 0, -204.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.31, 0, -203.68, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.63, 0, -204.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.32, 0, -204.14, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.08, 0, -206.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.73, 1.95, -206.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.41, 1.96, -209.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -132.64, 7, -210.01, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.99, 2, -210.34, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.51, 1.95, -206.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.31, 0, -206.92, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.62, 0, -205.28, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -116.11, 0, -203.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.79, 0, -208.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.1, 0, -198.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.39, 0, -203.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.03, 0, -208.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -103.28, 0, -200.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.03, 0, -208.2, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.39, 0, -203.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.1, 0, -198.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.79, 0, -208.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -116.11, 0, -203.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.62, 0, -205.28, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.31, 0, -206.92, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.51, 1.95, -206.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.99, 2, -210.34, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -132.64, 7, -210.01, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.41, 1.96, -209.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.73, 1.95, -206.94, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.08, 0, -206.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.32, 0, -204.14, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.63, 0, -204.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -106.31, 0, -203.68, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -112.38, 0, -204.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -113.37, 0, -208.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.1, 0, -200.45, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.89, 0, -206.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -108.85, 0, -202.39, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.5, 0, -199.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.49, 0, -207.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.45, 0, -207.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -97.75, 0, -203.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -97.15, 0, -191.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.23, 0, -208.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.84, 0, -208.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.81, 0, -199.14, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -113.12, 0, -204.54, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.69, 0, -208.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.94, 0, -198.46, 2, math.random(0,20))
end


