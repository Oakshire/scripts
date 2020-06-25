--[[
	Script Name		:	bloodsaber_meddler.lua
	Script Purpose	:	Waypoint Path for bloodsaber_meddler.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 05:46:55 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -14.95, -4, -136.73, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 2.33, 0.3, -136.54, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, -14.95, -4, -136.73, 2, math.random(1,10))
end


