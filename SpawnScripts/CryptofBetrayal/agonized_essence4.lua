--[[
	Script Name		:	agonized_essence4.lua
	Script Purpose	:	Waypoint Path for agonized_essence4.lua
	Script Author	:	Devn00b
	Script Date		:	06/10/2020 01:30:02 PM
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
	MovementLoopAddLocation(NPC, -0.85, 0.01, -60.08, 2, 0)
	MovementLoopAddLocation(NPC, -0.94, -0.09, -62.28, 2, 0)
	MovementLoopAddLocation(NPC, -0.78, -0.09, -76.01, 2, 0)
	MovementLoopAddLocation(NPC, -2.48, -0.09, -80.29, 2, 0)
	MovementLoopAddLocation(NPC, -1.79, -0.09, -65.12, 2, 0)
	MovementLoopAddLocation(NPC, -11.34, -0.09, -65.78, 2, 0)
	MovementLoopAddLocation(NPC, -10.9, -0.09, -74.94, 2, 0)
	MovementLoopAddLocation(NPC, -15.68, -0.09, -79.2, 2, 0)
	MovementLoopAddLocation(NPC, -14.55, -0.09, -79.13, 2, 0)
	MovementLoopAddLocation(NPC, -12.61, -0.09, -75.98, 2, 0)
	MovementLoopAddLocation(NPC, -1.85, -0.09, -75.57, 2, 0)
	MovementLoopAddLocation(NPC, -1.38, -0.09, -61.39, 2, 0)
	MovementLoopAddLocation(NPC, -0.51, -0.09, -60.18, 2, 0)
	MovementLoopAddLocation(NPC, -1.38, -0.09, -61.39, 2, 0)
	MovementLoopAddLocation(NPC, -1.85, -0.09, -75.57, 2, 0)
	MovementLoopAddLocation(NPC, -12.61, -0.09, -75.98, 2, 0)
	MovementLoopAddLocation(NPC, -14.55, -0.09, -79.13, 2, 0)
	MovementLoopAddLocation(NPC, -15.68, -0.09, -79.2, 2, 0)
	MovementLoopAddLocation(NPC, -10.9, -0.09, -74.94, 2, 0)
	MovementLoopAddLocation(NPC, -11.34, -0.09, -65.78, 2, 0)
	MovementLoopAddLocation(NPC, -1.79, -0.09, -65.12, 2, 0)
	MovementLoopAddLocation(NPC, -2.48, -0.09, -80.29, 2, 0)
	MovementLoopAddLocation(NPC, -0.78, -0.09, -76.01, 2, 0)
	MovementLoopAddLocation(NPC, -0.94, -0.09, -62.28, 2, 0)
	MovementLoopAddLocation(NPC, -0.85, 0.01, -60.08, 2, 0)
end


