--[[
	Script Name		:	ire_warlock4.lua
	Script Purpose	:	Waypoint Path for ire_warlock4.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 05:13:43 PM
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
	MovementLoopAddLocation(NPC, -12.37, 0.01, -154.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.45, -0.21, -151.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -14.96, -0.03, -154.87, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -14.28, 0, -152.72, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.38, 0.27, -154.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.7, -0.17, -152.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.69, -0.13, -154.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.27, -0.29, -153.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -14.81, 0.04, -153.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -10.69, -0.12, -152.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.1, 0.91, -155.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -11.02, -0.1, -154.11, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.88, -0.08, -152.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -11.87, -0.23, -151.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.17, 0.09, -154.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.35, -0.14, -151.59, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.17, 0.09, -154.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -11.87, -0.23, -151.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.88, -0.08, -152.93, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -11.02, -0.1, -154.11, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.1, 0.91, -155.88, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -10.69, -0.12, -152.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -14.81, 0.04, -153.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.27, -0.29, -153.78, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.69, -0.13, -154.75, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.7, -0.17, -152.06, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.38, 0.27, -154.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -14.28, 0, -152.72, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -14.96, -0.03, -154.87, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.45, -0.21, -151.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -12.37, 0.01, -154.15, 2, math.random(0,15))
end


