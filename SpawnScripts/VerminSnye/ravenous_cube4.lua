--[[
	Script Name		:	ravenous_cube4.lua
	Script Purpose	:	Waypoint Path for ravenous_cube4.lua
	Script Author	:	Devn00b
	Script Date		:	06/28/2020 06:29:46 PM
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
	MovementLoopAddLocation(NPC, 151.75, -7.01, -50.53, 2, 0)
	MovementLoopAddLocation(NPC, 158.59, -7.01, -50.73, 2, 0)
	MovementLoopAddLocation(NPC, 164.25, -7.01, -60.43, 2, 0)
	MovementLoopAddLocation(NPC, 171.64, -7.08, -60.75, 2, 0)
	MovementLoopAddLocation(NPC, 171.97, -7.01, -39.94, 2, 0)
	MovementLoopAddLocation(NPC, 152.18, -7.01, -40.24, 2, 0)
	MovementLoopAddLocation(NPC, 159.43, -7.01, -60.36, 2, 0)
	MovementLoopAddLocation(NPC, 151.69, -7.01, -59.94, 2, 0)
	MovementLoopAddLocation(NPC, 173.93, -6.75, -53.33, 2, 0)
	MovementLoopAddLocation(NPC, 151.69, -7.01, -59.94, 2, 0)
	MovementLoopAddLocation(NPC, 159.43, -7.01, -60.36, 2, 0)
	MovementLoopAddLocation(NPC, 152.18, -7.01, -40.24, 2, 0)
	MovementLoopAddLocation(NPC, 171.97, -7.01, -39.94, 2, 0)
	MovementLoopAddLocation(NPC, 171.64, -7.08, -60.75, 2, 0)
	MovementLoopAddLocation(NPC, 164.25, -7.01, -60.43, 2, 0)
	MovementLoopAddLocation(NPC, 158.59, -7.01, -50.73, 2, 0)
	MovementLoopAddLocation(NPC, 151.75, -7.01, -50.53, 2, 0)
end


