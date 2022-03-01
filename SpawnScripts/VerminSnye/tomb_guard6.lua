--[[
	Script Name		:	tomb_guard6.lua
	Script Purpose	:	Waypoint Path for tomb_guard6.lua
	Script Author	:	Devn00b
	Script Date		:	06/21/2020 12:53:26 PM
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
	MovementLoopAddLocation(NPC, 8.11, 0.9, 7.76, 2, 0)
	MovementLoopAddLocation(NPC, 10.9, 0.27, 4.2, 2, 0)
	MovementLoopAddLocation(NPC, 11.59, 0.01, -1.67, 2, 0)
	MovementLoopAddLocation(NPC, 8.86, 0, -5.94, 2, 0)
	MovementLoopAddLocation(NPC, 5.76, 0, -9.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 8.99, 0, -6.6, 2, 0)
	MovementLoopAddLocation(NPC, 10.61, 0, 0.01, 2, 0)
	MovementLoopAddLocation(NPC, 10.31, 0, 1.97, 2, 0)
	MovementLoopAddLocation(NPC, 9.55, 0.48, 5.39, 2, 0)
	MovementLoopAddLocation(NPC, 5.53, 1.24, 8.82, 2, 0)
	MovementLoopAddLocation(NPC, 0.5, 2.09, 11.69, 2, 0)
	MovementLoopAddLocation(NPC, -5.31, 2.9, 9.79, 2, 0)
	MovementLoopAddLocation(NPC, -9.24, 3.51, 7.91, 2, 0)
	MovementLoopAddLocation(NPC, -11.59, 4, 4.7, 2, 0)
	MovementLoopAddLocation(NPC, -12.27, 4.6, 0.94, 2, 0)
	MovementLoopAddLocation(NPC, -11.15, 5.1, -2.64, 2, 0)
	MovementLoopAddLocation(NPC, -8.57, 5.82, -7.35, 2, 0)
	MovementLoopAddLocation(NPC, -5.61, 6.33, -10.06, 2, 0)
	MovementLoopAddLocation(NPC, -2.06, 7.03, -11.78, 2, 0)
	MovementLoopAddLocation(NPC, 0.24, 7.04, -11.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -2.06, 7.03, -11.78, 2, 0)
	MovementLoopAddLocation(NPC, -5.61, 6.33, -10.06, 2, 0)
	MovementLoopAddLocation(NPC, -8.57, 5.82, -7.35, 2, 0)
	MovementLoopAddLocation(NPC, -11.15, 5.1, -2.64, 2, 0)
	MovementLoopAddLocation(NPC, -12.27, 4.6, 0.94, 2, 0)
	MovementLoopAddLocation(NPC, -11.59, 4, 4.7, 2, 0)
	MovementLoopAddLocation(NPC, -9.24, 3.51, 7.91, 2, 0)
	MovementLoopAddLocation(NPC, -5.31, 2.9, 9.79, 2, 0)
	MovementLoopAddLocation(NPC, 0.5, 2.09, 11.69, 2, 0)
	MovementLoopAddLocation(NPC, 5.53, 1.24, 8.82, 2, 0)
	MovementLoopAddLocation(NPC, 9.55, 0.48, 5.39, 2, 0)
	MovementLoopAddLocation(NPC, 10.31, 0, 1.97, 2, 0)
	MovementLoopAddLocation(NPC, 10.61, 0, 0.01, 2, 0)
	MovementLoopAddLocation(NPC, 8.99, 0, -6.6, 2, 0)
	MovementLoopAddLocation(NPC, 5.76, 0, -9.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 8.86, 0, -5.94, 2, 0)
	MovementLoopAddLocation(NPC, 11.59, 0.01, -1.67, 2, 0)
	MovementLoopAddLocation(NPC, 10.9, 0.27, 4.2, 2, 0)
	MovementLoopAddLocation(NPC, 8.11, 0.9, 7.76, 2, 0)
end


