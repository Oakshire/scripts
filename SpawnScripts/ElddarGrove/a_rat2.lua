--[[
	Script Name		:	a_rat2.lua
	Script Purpose	:	Waypoint Path for a_rat2.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 03:20:26 PM
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
	MovementLoopAddLocation(NPC, 588.46, -28, -230.24, 2, 0)
	MovementLoopAddLocation(NPC, 595.44, -24.69, -219.5, 2, 0)
	MovementLoopAddLocation(NPC, 604.82, -21.23, -225.82, 2, 0)
	MovementLoopAddLocation(NPC, 596.64, -24.82, -220.63, 2, 0)
	MovementLoopAddLocation(NPC, 589.07, -28.02, -232.63, 2, 0)
	MovementLoopAddLocation(NPC, 602.86, -31.21, -241.33, 2, 0)
	MovementLoopAddLocation(NPC, 610.58, -35.23, -229.34, 2, 0)
	MovementLoopAddLocation(NPC, 602.86, -31.21, -241.33, 2, 0)
	MovementLoopAddLocation(NPC, 589.07, -28.02, -232.63, 2, 0)
	MovementLoopAddLocation(NPC, 596.64, -24.82, -220.63, 2, 0)
	MovementLoopAddLocation(NPC, 604.82, -21.23, -225.82, 2, 0)
	MovementLoopAddLocation(NPC, 595.44, -24.69, -219.5, 2, 0)
	MovementLoopAddLocation(NPC, 588.46, -28, -230.24, 2, 0)
end


