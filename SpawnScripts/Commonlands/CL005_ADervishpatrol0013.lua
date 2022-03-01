--[[
	Script Name		:	CL005_adervishpatrol00013.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0013.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:29:00 AM
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
	MovementLoopAddLocation(NPC, 1272.73, -32.78, -66.28, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1266.11, -35.46, -100.25, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1278.54, -32.56, -84.78, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.05, -37.09, -68.64, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1278.7, -31.41, -68.83, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1249.94, -41.09, -90.81, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1281.35, -32.64, -30.86, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1294.51, -27.35, -52, 1.8, math.random(4, 12))
end


