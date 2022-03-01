--[[
	Script Name		:	infected_grave_scorpius2.lua
	Script Purpose	:	Waypoint Path for infected_grave_scorpius2.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 01:31:16 PM
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
	MovementLoopAddLocation(NPC, 137.22, -6.92, -97.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 147.92, -7.09, -98.72, 2, 0)
	MovementLoopAddLocation(NPC, 157.39, -6.44, -106.16, 2, 0)
	MovementLoopAddLocation(NPC, 160.99, -6.92, -106.99, 2, 0)
	MovementLoopAddLocation(NPC, 182.53, -7.01, -106.98, 2, 0)
	MovementLoopAddLocation(NPC, 200.67, -6.47, -120.98, 2, 0)
	MovementLoopAddLocation(NPC, 204.9, -6.99, -120.09, 2, 0)
	MovementLoopAddLocation(NPC, 220.26, -6.8, -104.45, 2, 0)
	MovementLoopAddLocation(NPC, 222.07, -6.32, -84.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 220.26, -6.8, -104.45, 2, 0)
	MovementLoopAddLocation(NPC, 204.9, -6.99, -120.09, 2, 0)
	MovementLoopAddLocation(NPC, 200.67, -6.47, -120.98, 2, 0)
	MovementLoopAddLocation(NPC, 182.53, -7.01, -106.98, 2, 0)
	MovementLoopAddLocation(NPC, 160.99, -6.92, -106.99, 2, 0)
	MovementLoopAddLocation(NPC, 157.39, -6.44, -106.16, 2, 0)
	MovementLoopAddLocation(NPC, 147.92, -7.09, -98.72, 2, 0)
	MovementLoopAddLocation(NPC, 137.22, -6.92, -97.49, 2, math.random(0,10))
end


