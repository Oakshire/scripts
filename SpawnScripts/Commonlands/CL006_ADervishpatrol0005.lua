--[[
	Script Name		:	CL006_adervishpatrol0005.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0005.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:09 AM
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
	MovementLoopAddLocation(NPC, 1265.59, -31.51, 378.78, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1306.58, -34.71, 365.79, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1307.23, -33.67, 382.56, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1291.65, -28.89, 392.91, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1250.57, -27.66, 392.45, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1267.69, -19.38, 419.06, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1235.15, -21.38, 443.4, 1.8, math.random(4, 12))
end


