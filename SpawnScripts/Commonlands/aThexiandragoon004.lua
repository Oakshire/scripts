--[[
	Script Name		:	athexiandragoon004.lua
	Script Purpose	:	Waypoint Path for athexiandragoon004.lua
	Script Author	:	Auto Generated
	Script Date		:	07/24/2020 02:08:37 PM
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
	MovementLoopAddLocation(NPC, 1385.23, -38.35, -249.18, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1370.97, -40.1, -257.44, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1376.4, -40.85, -268.34, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1347.7, -39.3, -242.03, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1354.54, -39.97, -248.16, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1358.74, -40.42, -254.02, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1346.37, -43.3, -264.58, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1342.44, -39.56, -242.27, 1.7,  math.random(9, 21))
	MovementLoopAddLocation(NPC, 1365.3, -40.34, -257.67, 1.7,  math.random(9, 21))
end


