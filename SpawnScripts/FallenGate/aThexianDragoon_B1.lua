--[[
	Script Name		:	AThexianDragoon_B1.lua
	Script Purpose	:	Waypoint Path for AThexianDragoon_B1.lua
	Script Author	:	Auto Generated
	Script Date		:	03/02/2019 05:16:56 PM
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
	MovementLoopAddLocation(NPC, -27.37, 12, 20.4, 2, 0)
	MovementLoopAddLocation(NPC, -26.5, 12, 20.76, 2, 0)
	MovementLoopAddLocation(NPC, -17.92, 12, 24.32, 2, 0)
	MovementLoopAddLocation(NPC, -10.45, 12, 28.4, 2, 0)
	MovementLoopAddLocation(NPC, -5.07, 12, 30.48, 2, 0)
	MovementLoopAddLocation(NPC, 14.21, 12, 40.37, 2, 0)
	MovementLoopAddLocation(NPC, 15.1, 12, 38.5, 2, 0)
	MovementLoopAddLocation(NPC, 4.24, 12, 34.7, 2, 0)
	MovementLoopAddLocation(NPC, -17.88, 12, 24.07, 2, 0)
	MovementLoopAddLocation(NPC, -26.49, 12, 21.49, 2, 0)
	MovementLoopAddLocation(NPC, -28.1, 12, 21.53, 2, 0)
	MovementLoopAddLocation(NPC, -29.92, 12, 23.78, 2, 0)
	MovementLoopAddLocation(NPC, -31.01, 12, 22.68, 2, 0)
	MovementLoopAddLocation(NPC, -28.87, 12, 19.8, 2, 0)
end


