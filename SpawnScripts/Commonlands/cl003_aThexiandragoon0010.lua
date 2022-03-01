--[[
	Script Name		:	cl003athexiandragoon0010.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0010.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:34 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1386.69, -39.64, -131.39, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1362.25, -40.5, -162.18, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1381.09, -38.23, -159.88, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1370.52, -39.98, -154.96, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1376.84, -36.99, -187.32, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1392.44, -36.09, -189.17, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1367.1, -40.83, -150.21, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1377.21, -37.13, -179, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1378.82, -38.33, -161.79, 1.7, math.random(9, 21))
end


