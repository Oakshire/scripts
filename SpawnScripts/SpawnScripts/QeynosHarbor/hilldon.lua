--[[
	Script Name		:	wyrmdon.lua
	Script Purpose	:	Waypoint Path for wyrmdon.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 02:14:17 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 939.72, -25.56, 72.05, 2, 30)
	MovementLoopAddLocation(NPC, 925.65, -25.56, 66.65, 2, 0)
	MovementLoopAddLocation(NPC, 910.81, -25.36, 84.67, 2, 0)
	MovementLoopAddLocation(NPC, 925, -25.49, 46.95, 2, 0)
	MovementLoopAddLocation(NPC, 931.56, -25.59, 29.07, 2, 0)
	MovementLoopAddLocation(NPC, 921.12, -25.48, 21.05, 2, 0)
	MovementLoopAddLocation(NPC, 901.38, -25.47, 41.4, 2, 0)
	MovementLoopAddLocation(NPC, 936.28, -25.56, 67.34, 2, 60)
	MovementLoopAddLocation(NPC, 901.38, -25.47, 41.4, 2, 0)
	MovementLoopAddLocation(NPC, 921.12, -25.48, 21.05, 2, 0)
	MovementLoopAddLocation(NPC, 931.56, -25.59, 29.07, 2, 0)
	MovementLoopAddLocation(NPC, 925, -25.49, 46.95, 2, 0)
	MovementLoopAddLocation(NPC, 910.81, -25.36, 84.67, 2, 0)
	MovementLoopAddLocation(NPC, 925.65, -25.56, 66.65, 2, 0)
	MovementLoopAddLocation(NPC, 939.72, -25.56, 72.05, 2, 60)
end


