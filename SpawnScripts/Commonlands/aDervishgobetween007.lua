--[[
	Script Name		:	adervishgobetween007.lua
	Script Purpose	:	Waypoint Path for adervishgobetween007.lua
	Script Author	:	Auto Generated
	Script Date		:	09/02/2020 10:49:35 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 709.54, -50.02, 258.06, 4, 0)
	MovementLoopAddLocation(NPC, 846.4, -46.18, 131.35, 4, 0)
	MovementLoopAddLocation(NPC, 908.5, -46.62, 92.94, 4, 0)
	MovementLoopAddLocation(NPC, 940.44, -46.66, 72.7, 4, 0)
	MovementLoopAddLocation(NPC, 975.92, -45.45, 24.76, 4, 0)
	MovementLoopAddLocation(NPC, 1070.25, -42.38, -40.05, 4, 0)
	MovementLoopAddLocation(NPC, 975.92, -45.45, 24.76, 4, 0)
	MovementLoopAddLocation(NPC, 940.44, -46.66, 72.7, 4, 0)
	MovementLoopAddLocation(NPC, 908.5, -46.62, 92.94, 4, 0)
	MovementLoopAddLocation(NPC, 846.4, -46.18, 131.35, 4, 0)
	MovementLoopAddLocation(NPC, 709.54, -50.02, 258.06, 4, 0)
end


