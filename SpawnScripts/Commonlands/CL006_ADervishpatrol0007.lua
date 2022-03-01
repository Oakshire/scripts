--[[
	Script Name		:	CL006_adervishpatrol0007.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0007.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:14 AM
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
	MovementLoopAddLocation(NPC, 1139.96, -42.24, 385.98, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1156.12, -43.02, 402.22, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1156.94, -42.96, 406.06, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1109.5, -43.48, 402.52, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1093.2, -43.72, 410.23, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1092.6, -43.64, 406.78, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1100.52, -43.62, 403.47, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1116.15, -42.5, 389.84, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1148.82, -41.39, 379.17, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1139.87, -42.27, 386.19, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1155.89, -43.03, 402.25, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1156.92, -42.96, 406.01, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1109.63, -43.48, 402.85, 1.8, math.random(4, 12))
end


