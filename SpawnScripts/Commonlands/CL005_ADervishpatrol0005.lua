--[[
	Script Name		:	CL005_adervishpatrol0005.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0005.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:38 AM
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
	MovementLoopAddLocation(NPC, 1270.06, -35, -32.49, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1297.56, -30.44, -15.4, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1284.57, -29.45, -53.24, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1306.66, -30.58, -4.7, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1307.53, -26.93, -37.01, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1297.64, -28.91, -37.14, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1268.75, -34.77, -37.12, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1298.04, -29.44, -26.33, 1.8, math.random(4, 12))
end


