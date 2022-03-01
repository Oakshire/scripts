--[[
	Script Name		:	CL006_adervishpatrol0016.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0016.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:41 AM
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
	MovementLoopAddLocation(NPC, 1059.24, -44.46, 414.45, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1053.63, -43.98, 429.44, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1053.59, -44.8, 409.61, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1061.43, -43.88, 435.84, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1085.16, -42.84, 455.69, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1069.46, -43.5, 455.67, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1061.31, -43.89, 432.35, 1.8, math.random(4, 12))
end


