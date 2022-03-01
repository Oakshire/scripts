--[[
	Script Name		:	ravenous_cube5.lua
	Script Purpose	:	Waypoint Path for ravenous_cube5.lua
	Script Author	:	Devn00b
	Script Date		:	06/28/2020 06:38:31 PM
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
	MovementLoopAddLocation(NPC, 170.29, -7.01, -38.71, 2, 0)
	MovementLoopAddLocation(NPC, 173.63, -7.32, -58.6, 2, 0)
	MovementLoopAddLocation(NPC, 163.97, -7.01, -61.28, 2, 0)
	MovementLoopAddLocation(NPC, 158.51, -7.01, -46.78, 2, 0)
	MovementLoopAddLocation(NPC, 165.49, -7.01, -46.23, 2, 0)
	MovementLoopAddLocation(NPC, 162.43, -7.63, -44.23, 2, 0)
	MovementLoopAddLocation(NPC, 162.06, -7.63, -37.94, 2, 0)
	MovementLoopAddLocation(NPC, 152.71, -7.01, -42.85, 2, 0)
	MovementLoopAddLocation(NPC, 151.75, -7.01, -49.97, 2, 0)
	MovementLoopAddLocation(NPC, 161.14, -7.55, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 173.74, -6.8, -51.91, 2, 0)
	MovementLoopAddLocation(NPC, 161.14, -7.55, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 151.75, -7.01, -49.97, 2, 0)
	MovementLoopAddLocation(NPC, 152.71, -7.01, -42.85, 2, 0)
	MovementLoopAddLocation(NPC, 162.06, -7.63, -37.94, 2, 0)
	MovementLoopAddLocation(NPC, 162.43, -7.63, -44.23, 2, 0)
	MovementLoopAddLocation(NPC, 165.49, -7.01, -46.23, 2, 0)
	MovementLoopAddLocation(NPC, 158.51, -7.01, -46.78, 2, 0)
	MovementLoopAddLocation(NPC, 163.97, -7.01, -61.28, 2, 0)
	MovementLoopAddLocation(NPC, 173.63, -7.32, -58.6, 2, 0)
	MovementLoopAddLocation(NPC, 170.29, -7.01, -38.71, 2, 0)
end


