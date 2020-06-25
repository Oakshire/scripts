--[[
	Script Name		:	agonized_essence2.lua
	Script Purpose	:	Waypoint Path for agonized_essence2.lua
	Script Author	:	Devn00b
	Script Date		:	06/10/2020 01:25:12 PM
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
	MovementLoopAddLocation(NPC, 1.02, -0.09, -76.09, 2, 0)
	MovementLoopAddLocation(NPC, -14.02, -0.09, -76.62, 2, 0)
	MovementLoopAddLocation(NPC, -13.7, -0.09, -60.48, 2, 0)
	MovementLoopAddLocation(NPC, -5.44, -0.09, -60.76, 2, 0)
	MovementLoopAddLocation(NPC, -6.04, -0.09, -52.34, 2, 0)
	MovementLoopAddLocation(NPC, -8.1, 0.5, -49.97, 2, 0)
	MovementLoopAddLocation(NPC, -5.39, -0.13, -55.57, 2, 0)
	MovementLoopAddLocation(NPC, -5.13, -0.09, -61.65, 2, 0)
	MovementLoopAddLocation(NPC, 2.11, -0.09, -61.4, 2, 0)
	MovementLoopAddLocation(NPC, 1.67, -0.09, -77.16, 2, 0)
	MovementLoopAddLocation(NPC, -14.23, -0.09, -76.63, 2, 0)
	MovementLoopAddLocation(NPC, -8.09, 0.66, -72.12, 2, 0)
	MovementLoopAddLocation(NPC, -13.26, -0.09, -75.82, 2, 0)
	MovementLoopAddLocation(NPC, -13.55, -0.09, -69.32, 2, 0)
	MovementLoopAddLocation(NPC, -9.07, -0.09, -76.39, 2, 0)
	MovementLoopAddLocation(NPC, 1.56, -0.09, -71.34, 2, 0)
	MovementLoopAddLocation(NPC, -9.07, -0.09, -76.39, 2, 0)
	MovementLoopAddLocation(NPC, -13.55, -0.09, -69.32, 2, 0)
	MovementLoopAddLocation(NPC, -13.26, -0.09, -75.82, 2, 0)
	MovementLoopAddLocation(NPC, -8.09, 0.66, -72.12, 2, 0)
	MovementLoopAddLocation(NPC, -14.23, -0.09, -76.63, 2, 0)
	MovementLoopAddLocation(NPC, 1.67, -0.09, -77.16, 2, 0)
	MovementLoopAddLocation(NPC, 2.11, -0.09, -61.4, 2, 0)
	MovementLoopAddLocation(NPC, -5.13, -0.09, -61.65, 2, 0)
	MovementLoopAddLocation(NPC, -5.39, -0.13, -55.57, 2, 0)
	MovementLoopAddLocation(NPC, -8.1, 0.5, -49.97, 2, 0)
	MovementLoopAddLocation(NPC, -6.04, -0.09, -52.34, 2, 0)
	MovementLoopAddLocation(NPC, -5.44, -0.09, -60.76, 2, 0)
	MovementLoopAddLocation(NPC, -13.7, -0.09, -60.48, 2, 0)
	MovementLoopAddLocation(NPC, -14.02, -0.09, -76.62, 2, 0)
	MovementLoopAddLocation(NPC, 1.02, -0.09, -76.09, 2, 0)
end


