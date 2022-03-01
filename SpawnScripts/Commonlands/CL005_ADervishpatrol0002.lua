--[[
	Script Name		:	CL005_adervishpatrol0002.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0002.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:31 AM
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
	MovementLoopAddLocation(NPC, 1213.26, -39.73, -153.45, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1225.51, -39.74, -132.2, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1238.64, -33.54, -148.06, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1231.18, -34.04, -153.76, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1251.11, -31.95, -142.91, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1248.03, -32.04, -144.33, 1.8, 0)
	MovementLoopAddLocation(NPC, 1228.18, -37.66, -137.84, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1237.93, -36.86, -131.8, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1244.62, -33.49, -142.5, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1229.12, -34.56, -153.13, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1209.8, -36.41, -185.97, 1.8, math.random(4, 12))
end


