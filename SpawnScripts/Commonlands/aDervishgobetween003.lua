--[[
	Script Name		:	adervishgobetween003.lua
	Script Purpose	:	Waypoint Path for adervishgobetween003.lua
	Script Author	:	Auto Generated
	Script Date		:	09/02/2020 10:49:25 AM
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
	MovementLoopAddLocation(NPC, 897.42, -50.85, 368.54, 4, 0)
	MovementLoopAddLocation(NPC, 988.81, -44.99, 413, 4, 0)
	MovementLoopAddLocation(NPC, 1103.84, -43.67, 406.91, 4, 0)
	MovementLoopAddLocation(NPC, 1231.59, -37.25, 369.18, 4, 0)
	MovementLoopAddLocation(NPC, 1309.93, -41.03, 273.93, 4, 0)
	MovementLoopAddLocation(NPC, 1327.29, -40.07, 160.3, 4, 0)
	MovementLoopAddLocation(NPC, 1325.22, -37.42, 51.42, 4, 0)
	MovementLoopAddLocation(NPC, 1312.75, -32.77, 17.71, 4, 0)
	MovementLoopAddLocation(NPC, 1214.6, -35.83, -179.44, 4, 0)
	MovementLoopAddLocation(NPC, 1312.75, -32.77, 17.71, 4, 0)
	MovementLoopAddLocation(NPC, 1325.22, -37.42, 51.42, 4, 0)
	MovementLoopAddLocation(NPC, 1327.29, -40.07, 160.3, 4, 0)
	MovementLoopAddLocation(NPC, 1309.93, -41.03, 273.93, 4, 0)
	MovementLoopAddLocation(NPC, 1231.59, -37.25, 369.18, 4, 0)
	MovementLoopAddLocation(NPC, 1103.84, -43.67, 406.91, 4, 0)
	MovementLoopAddLocation(NPC, 988.81, -44.99, 413, 4, 0)
	MovementLoopAddLocation(NPC, 897.42, -50.85, 368.54, 4, 0)
end


