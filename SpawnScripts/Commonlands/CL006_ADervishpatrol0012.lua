--[[
	Script Name		:	CL006_adervishpatrol0012.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0012.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:28 AM
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
	MovementLoopAddLocation(NPC, 1290.68, -31.9, 376.53, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.28, -29.41, 386.11, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1243.25, -24.05, 409.38, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1235.19, -21.9, 438.84, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1251.26, -19.44, 429.39, 1.8, math.random(4, 12))
end


