--[[
	Script Name		:	AThexianOverseer_B.lua
	Script Purpose	:	Waypoint Path for AThexianOverseer_B.lua
	Script Author	:	Auto Generated
	Script Date		:	03/02/2019 09:03:59 PM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, 30.02, 0, 8.24, 2, 0)
	MovementLoopAddLocation(NPC, 24.69, 0, 1.71, 2, 0)
	MovementLoopAddLocation(NPC, 17.67, 0, -1.75, 2, 0)
	MovementLoopAddLocation(NPC, 17.62, 0, -4.25, 2, 0)
	MovementLoopAddLocation(NPC, 26.28, 0, -5.67, 2, 0)
	MovementLoopAddLocation(NPC, 26.28, 0, -5.67, 2, 0)
	MovementLoopAddLocation(NPC, 31.25, 0.23, -7.11, 2, 0)
	MovementLoopAddLocation(NPC, 35.69, 1.15, -11.03, 2, 0)
	MovementLoopAddLocation(NPC, 45.44, 1.79, -6.53, 2, 0)
	MovementLoopAddLocation(NPC, 50.4, 1.71, -1.57, 2, 0)
	MovementLoopAddLocation(NPC, 50.65, 1.28, 3, 2, 0)
	MovementLoopAddLocation(NPC, 41.96, 0, 8.81, 2, 0)
	MovementLoopAddLocation(NPC, 35.83, 0, 8.25, 2, 0)
end


