--[[
	Script Name		:	shriller16.lua
	Script Purpose	:	Waypoint Path for shriller16.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:04:51 PM
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
	MovementLoopAddLocation(NPC, -152.16, -0.2, -167.02, 4, 0)
	MovementLoopAddLocation(NPC, -149.06, 0.01, -168.83, 4, 0)
	MovementLoopAddLocation(NPC, -155.01, -0.21, -166.52, 4, 0)
	MovementLoopAddLocation(NPC, -153.71, -0.21, -163.37, 4, 0)
	MovementLoopAddLocation(NPC, -147.84, -0.13, -165.75, 4, 0)
	MovementLoopAddLocation(NPC, -151.4, -0.23, -169.07, 4, 0)
	MovementLoopAddLocation(NPC, -153.71, -0.21, -163.59, 4, 0)
	MovementLoopAddLocation(NPC, -153.5, -0.19, -167.66, 4, 0)
	MovementLoopAddLocation(NPC, -148.98, -0.23, -165.5, 4, 0)
	MovementLoopAddLocation(NPC, -149.95, -0.23, -168.7, 4, 0)
	MovementLoopAddLocation(NPC, -150.16, -0.22, -166.61, 4, 0)
	MovementLoopAddLocation(NPC, -149.59, -0.23, -166.4, 4, 0)
	MovementLoopAddLocation(NPC, -153.93, -0.18, -166.65, 4, 0)
	MovementLoopAddLocation(NPC, -150.87, -0.24, -164.58, 4, 0)
	MovementLoopAddLocation(NPC, -152.51, -0.22, -168.53, 4, 0)
	MovementLoopAddLocation(NPC, -150.87, -0.24, -164.58, 4, 0)
	MovementLoopAddLocation(NPC, -153.93, -0.18, -166.65, 4, 0)
	MovementLoopAddLocation(NPC, -149.59, -0.23, -166.4, 4, 0)
	MovementLoopAddLocation(NPC, -150.16, -0.22, -166.61, 4, 0)
	MovementLoopAddLocation(NPC, -149.95, -0.23, -168.7, 4, 0)
	MovementLoopAddLocation(NPC, -148.98, -0.23, -165.5, 4, 0)
	MovementLoopAddLocation(NPC, -153.5, -0.19, -167.66, 4, 0)
	MovementLoopAddLocation(NPC, -153.71, -0.21, -163.59, 4, 0)
	MovementLoopAddLocation(NPC, -151.4, -0.23, -169.07, 4, 0)
	MovementLoopAddLocation(NPC, -147.84, -0.13, -165.75, 4, 0)
	MovementLoopAddLocation(NPC, -153.71, -0.21, -163.37, 4, 0)
	MovementLoopAddLocation(NPC, -155.01, -0.21, -166.52, 4, 0)
	MovementLoopAddLocation(NPC, -149.06, 0.01, -168.83, 4, 0)
	MovementLoopAddLocation(NPC, -152.16, -0.2, -167.02, 4, 0)
end


