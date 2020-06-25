--[[
	Script Name		:	AThexianDragoon_B3.lua
	Script Purpose	:	Waypoint Path for AThexianDragoon_B3.lua
	Script Author	:	Auto Generated
	Script Date		:	03/02/2019 05:28:29 PM
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
	MovementLoopAddLocation(NPC, 20.75, 2, 35.83, 2, 0)
	MovementLoopAddLocation(NPC, 15.88, 4.95, 34.83, 2, 0)
	MovementLoopAddLocation(NPC, 6.68, 12, 31.17, 2, 0)
	MovementLoopAddLocation(NPC, 4.82, 12, 29.07, 2, 0)
	MovementLoopAddLocation(NPC, 5.24, 12, 28.37, 2, 0)
	MovementLoopAddLocation(NPC, 7.89, 12, 29.02, 2, 0)
	MovementLoopAddLocation(NPC, 20.51, 2, 35.19, 2, 0)
	MovementLoopAddLocation(NPC, 23.65, 0.02, 28.53, 2, 0)
	MovementLoopAddLocation(NPC, 25.41, 0.02, 29.27, 2, 0)
	MovementLoopAddLocation(NPC, 22.4, 2, 36.3, 2, 0)
end


