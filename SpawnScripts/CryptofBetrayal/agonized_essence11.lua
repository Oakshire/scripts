--[[
	Script Name		:	agonized_essence11.lua
	Script Purpose	:	Waypoint Path for agonized_essence11.lua
	Script Author	:	Devn00b
	Script Date		:	06/10/2020 02:39:21 PM
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
	MovementLoopAddLocation(NPC, 15.65, 0.54, -109.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.73, -0.09, -106.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.86, -0.09, -115.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.98, -0.09, -106.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.15, -0.09, -106.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.68, 0.58, -111.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.24, 0.04, -110.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.64, 0.05, -110.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.7, -0.09, -118.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.19, -0.09, -121.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.57, 0.52, -118.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.51, -0.09, -122.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.15, -0.09, -120.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.2, -0.09, -119.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.75, -0.09, -110.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.28, -0.09, -110.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.53, -0.09, -110.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 14.41, -0.09, -105.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.53, -0.09, -110.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.28, -0.09, -110.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.75, -0.09, -110.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 9.2, -0.09, -119.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.15, -0.09, -120.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 7.51, -0.09, -122.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.57, 0.52, -118.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 16.19, -0.09, -121.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.7, -0.09, -118.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.64, 0.05, -110.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.24, 0.04, -110.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 18.68, 0.58, -111.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 24.15, -0.09, -106.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 6.98, -0.09, -106.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.86, -0.09, -115.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.73, -0.09, -106.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.65, 0.54, -109.83, 2, math.random(0,5))
end


