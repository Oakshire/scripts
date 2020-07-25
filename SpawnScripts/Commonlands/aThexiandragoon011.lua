--[[
	Script Name		:	athexiandragoon011.lua
	Script Purpose	:	Waypoint Path for athexiandragoon011.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:09:15 PM
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
	MovementLoopAddLocation(NPC, 1350.53, -38.76, -238.78, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.61, -40.33, -253.08, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1361.09, -36.61, -228.21, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1349.26, -39.63, -244.46, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1378.93, -36.81, -236.15, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1351.78, -41.89, -260.03, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1343.56, -40.87, -250.35, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1335.57, -39.92, -241, 1.7,  math.random(9, 21))
end


