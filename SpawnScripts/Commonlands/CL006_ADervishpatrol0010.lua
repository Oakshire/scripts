--[[
	Script Name		:	CL006_adervishpatrol0010.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0010.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:23 AM
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
	MovementLoopAddLocation(NPC, 1251.85, -26.5, 396.18, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1243.12, -26.82, 396.32, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1267.04, -18.31, 422.65, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.07, -18.37, 426.04, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1235.62, -22.6, 432.48, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1264.26, -15.61, 431.97, 1.8, 0)
	MovementLoopAddLocation(NPC, 1267.05, -16, 429.25, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.16, -24.57, 402.81, 1.8, math.random(4, 12))
end


