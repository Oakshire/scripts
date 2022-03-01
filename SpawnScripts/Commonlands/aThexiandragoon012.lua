--[[
	Script Name		:	athexiandragoon012.lua
	Script Purpose	:	Waypoint Path for athexiandragoon012.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:56 PM
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
	MovementLoopAddLocation(NPC, 1369.73, -40.94, -265.06, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.52, -40.17, -251.64, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1367.67, -40.97, -263.42, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1341.19, -43.62, -261.34, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1363.93, -41.06, -262.39, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1369.65, -38.77, -247.52, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1369.5, -41.19, -267.45, 1.7,  math.random(9, 21))
end


