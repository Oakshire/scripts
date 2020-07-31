--[[
	Script Name		:	CL004_adervishpatrol0004.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0004.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:34 AM
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
	MovementLoopAddLocation(NPC, 1318.3, -41.09, 106.44, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1317.45, -41.21, 87.71, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1328.14, -38.53, 67.4, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1347.21, -35.58, 67.08, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1315.56, -39.73, 51.71, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1321.7, -40.8, 86.73, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1341.4, -37.79, 121.33, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1342.06, -37.77, 129.85, 1.8, 0)
	MovementLoopAddLocation(NPC, 1363.51, -34.47, 166.8, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1345.66, -37.57, 151.97, 1.8, math.random(4, 12))
end


