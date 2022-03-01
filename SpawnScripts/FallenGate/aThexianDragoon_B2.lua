--[[
	Script Name		:	AThexianDragoon_B2.lua
	Script Purpose	:	Waypoint Path for AThexianDragoon_B2.lua
	Script Author	:	Auto Generated
	Script Date		:	03/02/2019 05:23:16 PM
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
	MovementLoopAddLocation(NPC, 6.17, 12, 25.93, 2, 0)
	MovementLoopAddLocation(NPC, 14.8, 12, 7.73, 2, 0)
	MovementLoopAddLocation(NPC, -10.01, 12, -4.55, 2, 0)
	MovementLoopAddLocation(NPC, -13.08, 12, -2.6, 2, 0)
	MovementLoopAddLocation(NPC, -21.23, 12, 16.56, 2, 0)
	MovementLoopAddLocation(NPC, -22.58, 12, 15.77, 2, 0)
	MovementLoopAddLocation(NPC, -12.83, 12, -2.68, 2, 0)
	MovementLoopAddLocation(NPC, -10.16, 12, -4.27, 2, 0)
	MovementLoopAddLocation(NPC, 15.28, 12, 7.94, 2, 0)
	MovementLoopAddLocation(NPC, 6.42, 12, 27.28, 2, 0)
	MovementLoopAddLocation(NPC, 5.75, 12, 26.92, 2, 0)
end


