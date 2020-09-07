--[[
	Script Name		:	tumblertest.lua
	Script Purpose	:	Waypoint Path for tumblertest.lua
	Script Author	:	Auto Generated
	Script Date		:	09/06/2020 10:55:22 AM
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
	MovementLoopAddLocation(NPC, 1061.86, -47.24, 335.24, 5, 0)
	MovementLoopAddLocation(NPC, 965.02, -49.26, 339.89, 5, 0)
end


