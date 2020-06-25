--[[
	Script Name		:	agonized_essence10.lua
	Script Purpose	:	Waypoint Path for agonized_essence10.lua
	Script Author	:	Devn00b
	Script Date		:	06/10/2020 02:34:57 PM
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
	MovementLoopAddLocation(NPC, 20.3, -0.09, -120.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.47, -0.09, -120.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.12, -0.09, -122.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.67, 0.57, -117.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.18, -0.09, -117.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.5, -0.09, -105.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.53, -0.09, -105.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.4, 0.65, -111.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 20.69, -0.09, -109.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.56, -0.09, -106.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.09, 0.66, -111.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.4, -0.09, -110.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.02, -0.09, -115.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.42, -0.09, -121.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.42, -0.09, -121.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.24, -0.09, -118.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.95, -0.09, -109.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.67, 0.04, -110.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.29, -0.09, -106.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.67, 0.04, -110.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.95, -0.09, -109.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.24, -0.09, -118.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.42, -0.09, -121.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 10.42, -0.09, -121.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.02, -0.09, -115.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 11.4, -0.09, -110.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.09, 0.66, -111.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.56, -0.09, -106.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 20.69, -0.09, -109.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.4, 0.65, -111.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 25.53, -0.09, -105.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.5, -0.09, -105.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.18, -0.09, -117.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.67, 0.57, -117.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 26.12, -0.09, -122.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.47, -0.09, -120.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 20.3, -0.09, -120.42, 2, math.random(0,5))
end


