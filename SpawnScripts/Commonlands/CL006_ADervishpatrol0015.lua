--[[
	Script Name		:	CL006_adervishpatrol0015.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0015.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:38 AM
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
	MovementLoopAddLocation(NPC, 1121.7, -42.24, 445.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1085.25, -43.03, 445.85, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1077.23, -43.89, 412.86, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1045.65, -44.97, 406.21, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1040.62, -44.89, 414.36, 1.8, 0)
	MovementLoopAddLocation(NPC, 1029.4, -44.07, 425.87, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1056.75, -43.49, 443.74, 1.8, math.random(4, 12))
end


