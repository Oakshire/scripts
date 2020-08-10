--[[
	Script Name		:	CL006_adervishpatrol0002.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0002.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:29:59 AM
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
	MovementLoopAddLocation(NPC, 1066.52, -43.43, 465.14, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1116.97, -43.3, 399.51, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1084.65, -43.66, 412.26, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1108.52, -42.9, 435.12, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1125.46, -39.73, 472.61, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1092.45, -42.66, 456.35, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1125.18, -42.16, 436.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1125.47, -42.32, 431.82, 1.8, math.random(4, 12))
end


