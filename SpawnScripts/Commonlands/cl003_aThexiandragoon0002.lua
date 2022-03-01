--[[
	Script Name		:	CL003athexiandragoon0002.lua
	Script Purpose	:	Waypoint Path for CL003athexiandragoon0002.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:12 AM
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
	MovementLoopAddLocation(NPC, 1396.63, -35.89, -184.98, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.6, -38.56, -175.77, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386.29, -36.47, -187.57, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1357.11, -39.24, -185.43, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1351.48, -40.09, -182.7, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1377.29, -36.93, -194.79, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1380.77, -37.47, -168.84, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386.33, -36.91, -171.55, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1349.85, -42.2, -161.92, 1.7, math.random(9, 21))
end


