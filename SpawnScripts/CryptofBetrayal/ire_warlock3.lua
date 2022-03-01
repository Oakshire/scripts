--[[
	Script Name		:	ire_warlock3.lua
	Script Purpose	:	Waypoint Path for ire_warlock3.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 05:13:39 PM
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
	MovementLoopAddLocation(NPC, -9.83, -0.18, -152.56, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.63, -0.14, -154.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -15.09, 0.05, -152.49, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.61, 0.27, -154.8, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -15.09, -0.04, -155.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.89, -0.01, -152.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.86, -0.25, -153.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -11.61, -0.08, -152.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -10.68, 0.27, -155.11, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -11.61, -0.08, -152.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.86, -0.25, -153.81, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.89, -0.01, -152.96, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -15.09, -0.04, -155.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -13.61, 0.27, -154.8, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -15.09, 0.05, -152.49, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.63, -0.14, -154.74, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -9.83, -0.18, -152.56, 2, math.random(0,15))
end


