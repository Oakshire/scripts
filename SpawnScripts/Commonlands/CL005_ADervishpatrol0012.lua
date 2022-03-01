--[[
	Script Name		:	CL005_adervishpatrol00012.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol00012.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:58 AM
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
	MovementLoopAddLocation(NPC, 1241.04, -32.08, -157.26, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1222.28, -40.21, -134.33, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1237.16, -36.88, -132.33, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1262.97, -33.55, -127.24, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1260.25, -32.95, -133.08, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1237.23, -40.4, -117.65, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1241.38, -41.61, -105.13, 1.8, math.random(4, 12))
end


