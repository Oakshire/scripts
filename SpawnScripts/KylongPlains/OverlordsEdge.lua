--[[
	Script Name		:	CLBoat.lua
	Script Purpose	:	Waypoint Path for KP TO CLBoat.lua
	Script Author	:	Auto Generated
	Script Date		:	11/12/2019 07:45:38 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	AddTransportSpawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 915.02, 1.45, 473.67, 2, 0)
	MovementLoopAddLocation(NPC, 861.17, 1.45, 526.45, 2, 0)
	MovementLoopAddLocation(NPC, 826.07, 1.45, 555.45, 2, 0)
	MovementLoopAddLocation(NPC, 769.57, 1.45, 592.02, 2, 0)
	MovementLoopAddLocation(NPC, 732.15, 1.45, 611.96, 2, 0)
	MovementLoopAddLocation(NPC, 684, 1.45, 633.21, 2, 0)
	MovementLoopAddLocation(NPC, 657.32, 1.45, 644.34, 2, 0)
	MovementLoopAddLocation(NPC, 635.73, 1.45, 653.32, 2, 0)
end


