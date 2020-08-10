--[[
	Script Name		:	CL006_adervishpatrol0014.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0014.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:33 AM
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
	MovementLoopAddLocation(NPC, 1100.99, -42.58, 455.73, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1108.98, -42.34, 465.58, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1116.39, -42.71, 432.19, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1100.62, -43.67, 422.75, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1132.67, -43.05, 420.06, 1.8, math.random(4, 12))
end


