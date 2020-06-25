--[[
	Script Name		:	shriller17.lua
	Script Purpose	:	Waypoint Path for shriller17.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:23:48 PM
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
	MovementLoopAddLocation(NPC, -126.8, -0.12, -124.74, 2, 0)
	MovementLoopAddLocation(NPC, -128.34, -0.12, -136.19, 2, 0)
	MovementLoopAddLocation(NPC, -147.06, -0.05, -138.74, 2, 0)
	MovementLoopAddLocation(NPC, -159.09, 0, -134.09, 2, 0)
	MovementLoopAddLocation(NPC, -158.12, -0.11, -119.96, 2, 0)
	MovementLoopAddLocation(NPC, -154.12, -0.05, -96.36, 2, 0)
	MovementLoopAddLocation(NPC, -147.81, -0.1, -84.18, 2, 0)
	MovementLoopAddLocation(NPC, -168.98, -0.27, -73.79, 2, 0)
	MovementLoopAddLocation(NPC, -182.93, -0.11, -73.04, 2, 0)
	MovementLoopAddLocation(NPC, -188.84, 0.41, -72.02, 2, 0)
	MovementLoopAddLocation(NPC, -192.35, -0.1, -63.76, 2, 0)
	MovementLoopAddLocation(NPC, -190.13, 0.47, -48.1, 2, 0)
	MovementLoopAddLocation(NPC, -176.04, -0.09, -33.4, 2, 0)
	MovementLoopAddLocation(NPC, -190.13, 0.47, -48.1, 2, 0)
	MovementLoopAddLocation(NPC, -192.35, -0.1, -63.76, 2, 0)
	MovementLoopAddLocation(NPC, -188.84, 0.41, -72.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.93, -0.11, -73.04, 2, 0)
	MovementLoopAddLocation(NPC, -168.98, -0.27, -73.79, 2, 0)
	MovementLoopAddLocation(NPC, -147.81, -0.1, -84.18, 2, 0)
	MovementLoopAddLocation(NPC, -154.12, -0.05, -96.36, 2, 0)
	MovementLoopAddLocation(NPC, -158.12, -0.11, -119.96, 2, 0)
	MovementLoopAddLocation(NPC, -159.09, 0, -134.09, 2, 0)
	MovementLoopAddLocation(NPC, -147.06, -0.05, -138.74, 2, 0)
	MovementLoopAddLocation(NPC, -128.34, -0.12, -136.19, 2, 0)
	MovementLoopAddLocation(NPC, -126.8, -0.12, -124.74, 2, 0)
end


