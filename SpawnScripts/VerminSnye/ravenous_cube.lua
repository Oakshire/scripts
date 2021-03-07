--[[
	Script Name		:	ravenous_cube.lua
	Script Purpose	:	Waypoint Path for ravenous_cube.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:31:02 PM
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
	MovementLoopAddLocation(NPC, 191.99, -6.83, -75.69, 2, 0)
	MovementLoopAddLocation(NPC, 185.67, -7.01, -77.08, 2, 0)
	MovementLoopAddLocation(NPC, 173.65, -6.99, -81.77, 2, 0)
	MovementLoopAddLocation(NPC, 165.68, -7.01, -81.16, 2, 0)
	MovementLoopAddLocation(NPC, 156.84, -6.45, -72.96, 2, 0)
	MovementLoopAddLocation(NPC, 156, -6.95, -63.75, 2, 0)
	MovementLoopAddLocation(NPC, 154.93, -7.01, -45.38, 2, 0)
	MovementLoopAddLocation(NPC, 156, -6.95, -63.75, 2, 0)
	MovementLoopAddLocation(NPC, 156.84, -6.45, -72.96, 2, 0)
	MovementLoopAddLocation(NPC, 165.68, -7.01, -81.16, 2, 0)
	MovementLoopAddLocation(NPC, 173.65, -6.99, -81.77, 2, 0)
	MovementLoopAddLocation(NPC, 185.67, -7.01, -77.08, 2, 0)
	MovementLoopAddLocation(NPC, 191.99, -6.83, -75.69, 2, 0)
end


