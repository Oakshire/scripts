--[[
	Script Name		:	cl003athexiandragoon0006.lua
	Script Purpose	:	Waypoint Path for cl003athexiandragoon0006.lua
	Script Author	:	Auto Generated
	Script Date		:	07/26/2020 03:54:22 AM
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
	MovementLoopAddLocation(NPC, 1372.27, -37.28, -190.27, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.26, -39.61, -168.15, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1402.14, -35.86, -172.99, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1386.89, -39.57, -132.36, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1385.86, -36.97, -171.14, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.22, -41.85, -152.78, 1.7, math.random(9, 21))
	MovementLoopAddLocation(NPC, 1393.45, -37.18, -159.32, 1.7, math.random(9, 21))
end


