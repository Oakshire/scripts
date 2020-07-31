--[[
	Script Name		:	CL004_adervishpatrol0010.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0010.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:51 AM
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
	MovementLoopAddLocation(NPC, 1373.84, -33.56, 142.25, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1339.8, -38.21, 136.39, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1364.75, -34.32, 121.65, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1357.75, -36.06, 135.41, 1.8, 0)
	MovementLoopAddLocation(NPC, 1350.77, -37.06, 137.79, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1342.19, -37.77, 131.49, 1.8, 0)
	MovementLoopAddLocation(NPC, 1323.32, -40.66, 106.91, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1365.94, -33.95, 113.6, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1363.71, -34.58, 152.01, 1.8, math.random(4, 12))
end


