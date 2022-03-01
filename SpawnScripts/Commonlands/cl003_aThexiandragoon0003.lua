--[[
	Script Name		:	cl003athexiandragoon0003.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0003.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:14 AM
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
	MovementLoopAddLocation(NPC, 1382.65, -39.52, -144.18, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1394.35, -40.85, -113, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1380.85, -40.15, -136.1, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1388.09, -37.35, -162.24, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1348.32, -42.45, -159.58, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1348.52, -42.32, -162.71, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386.1, -37.07, -169.83, 1.7, math.random(9, 21))
end


