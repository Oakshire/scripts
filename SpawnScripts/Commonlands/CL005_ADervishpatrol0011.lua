--[[
	Script Name		:	CL005_adervishpatrol00011.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol00011.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:55 AM
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
	MovementLoopAddLocation(NPC, 1263.62, -36.18, -81.38, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1244.48, -37.92, -121.67, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1215.87, -37.88, -159.11, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1243.97, -33.39, -143.47, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1253.35, -38.05, -111.32, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1281.62, -32.87, -95.61, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1281.6, -32.46, -89.37, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1281.79, -33.15, -127.48, 1.8, math.random(4, 12))
end


