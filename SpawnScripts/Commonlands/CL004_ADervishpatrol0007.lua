--[[
	Script Name		:	CL004_adervishpatrol00007.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol00007.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:43 AM
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
	MovementLoopAddLocation(NPC, 1313.63, -41.76, 237.27, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1337.89, -40.96, 206.31, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1356.69, -39.2, 211.69, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1341.73, -39.26, 181.76, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1351.21, -37.07, 156.75, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1361.75, -34.78, 151.88, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1330.86, -39.67, 126.74, 1.8, math.random(4, 12))
end


