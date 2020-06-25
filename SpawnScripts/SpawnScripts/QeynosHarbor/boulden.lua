--[[
	Script Name		:	boulden.lua
	Script Purpose	:	Waypoint Path for boulden.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 02:06:40 PM
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
	MovementLoopAddLocation(NPC, 949.48, -25.5, 33.63, 2, 60)
	MovementLoopAddLocation(NPC, 932.52, -25.51, 24.28, 2, 60)
end


