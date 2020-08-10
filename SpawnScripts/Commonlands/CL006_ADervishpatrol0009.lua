--[[
	Script Name		:	CL006_adervishpatrol0009.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0009.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:20 AM
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
	MovementLoopAddLocation(NPC, 1266.9, -18.27, 422.81, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1275, -20.02, 416.09, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1280.17, -22.37, 411.41, 1.8, 0)
	MovementLoopAddLocation(NPC, 1282.6, -24.9, 406.25, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1298.66, -22.77, 409.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1275.01, -22.63, 409.54, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1243.28, -25.58, 399.86, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.53, -34, 373.22, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1219.39, -39.26, 369.82, 1.8, math.random(4, 12))
end


