--[[
	Script Name		:	AThexianDragoon_C.lua
	Script Purpose	:	Waypoint Path for AThexianDragoon_C.lua
	Script Author	:	Auto Generated
	Script Date		:	03/02/2019 09:17:07 PM
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
	MovementLoopAddLocation(NPC, 28.99, 0, 18.26, 2, 0)
	MovementLoopAddLocation(NPC, 46.63, 3.01, -17.81, 2, 0)
	MovementLoopAddLocation(NPC, 55.5, 6.65, -41.76, 2, 0)
	MovementLoopAddLocation(NPC, 56.22, 6.81, -46.54, 2, 0)
	MovementLoopAddLocation(NPC, 59.04, 6.81, -45.32, 2, 0)
	MovementLoopAddLocation(NPC, 55.86, 5.66, -34.78, 2, 0)
	MovementLoopAddLocation(NPC, 49.21, 3.33, -18.88, 2, 0)
	MovementLoopAddLocation(NPC, 37.54, 0, 9.01, 2, 0)
	MovementLoopAddLocation(NPC, 29.62, 0, 22.23, 2, 0)
	MovementLoopAddLocation(NPC, 27.57, 0, 21.47, 2, 0)
	MovementLoopAddLocation(NPC, 28.17, 0, 20.05, 2, 0)
end


