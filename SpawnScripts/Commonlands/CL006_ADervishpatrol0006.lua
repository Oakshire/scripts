--[[
	Script Name		:	CL006_adervishpatrol0006.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0006.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:12 AM
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
	MovementLoopAddLocation(NPC, 1167.49, -39.12, 452.45, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1132.71, -41.79, 449.15, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1116.71, -42.35, 442.59, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1140.35, -41.48, 442.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1171.76, -38.51, 452.5, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1203.69, -31.29, 452, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1203.82, -31.41, 456.05, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1211.95, -30.07, 432.72, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1134.28, -43.55, 406.1, 1.8, math.random(4, 12))
end


