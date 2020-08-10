--[[
	Script Name		:	CL006_adervishpatrol0013.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0013.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:31 AM
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
	MovementLoopAddLocation(NPC, 1243.25, -26.74, 396.52, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1243.32, -32.96, 379.74, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1235.34, -27.17, 402.88, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1211.56, -33.83, 409.28, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1204.08, -32.92, 429.48, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1159.77, -41.83, 381.21, 1.8, math.random(4, 12))
end


