--[[
	Script Name		:	kitten.lua
	Script Purpose	:	Waypoint Path for kitten.lua
	Script Author	:	Devn00b
	Script Date		:	04/13/2020 01:39:12 PM
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
	MovementLoopAddLocation(NPC, 634.15, -16.45, 181.23, 2, 30)
	MovementLoopAddLocation(NPC, 633.86, -16.45, 177.94, 2, 0)
	MovementLoopAddLocation(NPC, 635.62, -16.45, 177.45, 2, 0)
	MovementLoopAddLocation(NPC, 638.65, -16.45, 177.3, 2, 0)
	MovementLoopAddLocation(NPC, 639.86, -16.45, 183.18, 2, 0)
	MovementLoopAddLocation(NPC, 634.06, -16.45, 184.98, 2, 0)
	MovementLoopAddLocation(NPC, 641.22, -16.45, 184.04, 2, 0)
	MovementLoopAddLocation(NPC, 639.66, -16.45, 175.35, 2, 0)
	MovementLoopAddLocation(NPC, 642.9, -16.45, 174.4, 2, 0)
	MovementLoopAddLocation(NPC, 644.94, -16.45, 174.26, 2, 0)
	MovementLoopAddLocation(NPC, 644.43, -16.45, 178.29, 2, 0)
	MovementLoopAddLocation(NPC, 651.87, -16.45, 180.09, 2, 0)
	MovementLoopAddLocation(NPC, 646.75, -16.45, 175.02, 2, 0)
	MovementLoopAddLocation(NPC, 649.11, -16.45, 173.09, 2, 0)
	MovementLoopAddLocation(NPC, 651.36, -16.45, 172.71, 2, 0)
	MovementLoopAddLocation(NPC, 652.4, -16.45, 174.89, 2, 30)
	MovementLoopAddLocation(NPC, 651.36, -16.45, 172.71, 2, 0)
	MovementLoopAddLocation(NPC, 649.11, -16.45, 173.09, 2, 0)
	MovementLoopAddLocation(NPC, 646.75, -16.45, 175.02, 2, 0)
	MovementLoopAddLocation(NPC, 651.87, -16.45, 180.09, 2, 0)
	MovementLoopAddLocation(NPC, 644.43, -16.45, 178.29, 2, 0)
	MovementLoopAddLocation(NPC, 644.94, -16.45, 174.26, 2, 0)
	MovementLoopAddLocation(NPC, 642.9, -16.45, 174.4, 2, 0)
	MovementLoopAddLocation(NPC, 639.66, -16.45, 175.35, 2, 0)
	MovementLoopAddLocation(NPC, 641.22, -16.45, 184.04, 2, 0)
	MovementLoopAddLocation(NPC, 634.06, -16.45, 184.98, 2, 0)
	MovementLoopAddLocation(NPC, 639.86, -16.45, 183.18, 2, 0)
	MovementLoopAddLocation(NPC, 638.65, -16.45, 177.3, 2, 0)
	MovementLoopAddLocation(NPC, 635.62, -16.45, 177.45, 2, 0)
	MovementLoopAddLocation(NPC, 633.86, -16.45, 177.94, 2, 0)
	MovementLoopAddLocation(NPC, 634.15, -16.45, 181.23, 2, 30)
end


