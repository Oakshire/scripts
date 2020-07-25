--[[
	Script Name		:	athexiandragoon010.lua
	Script Purpose	:	Waypoint Path for athexiandragoon010.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:52 PM
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
	MovementLoopAddLocation(NPC, 1350.42, -38.05, -233.95, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1350.58, -40.9, -253.17, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1361.45, -41.82, -268.06, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1360.07, -39.43, -247.12, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1368.09, -40.94, -263.46, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1357.14, -40.62, -253.88, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1373.63, -40.41, -262.11, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1355.78, -37.2, -230, 1.7,  math.random(9, 21))
end


