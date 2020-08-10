--[[
	Script Name		:	CL006_adervishpatrol0011.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0011.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:25 AM
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
	MovementLoopAddLocation(NPC, 1252.07, -31.33, 382.12, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1216.21, -32.56, 407.84, 1.8, 0)
	MovementLoopAddLocation(NPC, 1201.55, -35.63, 410.6, 1.8, 0)
	MovementLoopAddLocation(NPC, 1193.71, -37.74, 408.26, 1.8, 0)
	MovementLoopAddLocation(NPC, 1183.58, -38.76, 421.18, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1179.93, -39.27, 422.73, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1195.94, -33.44, 449.23, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1232.37, -22.01, 447.9, 1.8, math.random(4, 12))
end


