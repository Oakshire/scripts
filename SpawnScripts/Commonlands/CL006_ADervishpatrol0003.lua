--[[
	Script Name		:	CL006_adervishpatrol0003.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0003.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:04 AM
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
	MovementLoopAddLocation(NPC, 1145.23, -41.94, 427.22, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1174.77, -40.81, 415.97, 1.8, 0)
	MovementLoopAddLocation(NPC, 1189.84, -37.89, 416.13, 1.8, 0)
	MovementLoopAddLocation(NPC, 1199.67, -35.08, 421.36, 1.8, 0)
	MovementLoopAddLocation(NPC, 1207.06, -33.4, 419.76, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1204.94, -35.63, 407.14, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1205.04, -36.41, 402.31, 1.8, 0)
	MovementLoopAddLocation(NPC, 1203.7, -37.62, 396.86, 1.8, 0)
	MovementLoopAddLocation(NPC, 1227.39, -33.91, 382.54, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1233.3, -27.55, 404.03, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1216.5, -28.33, 433.86, 1.8, math.random(4, 12))
end


