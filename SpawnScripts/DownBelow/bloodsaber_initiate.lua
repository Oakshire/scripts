--[[
	Script Name		:	bloodsaber_initiate.lua
	Script Purpose	:	Waypoint Path for bloodsaber_initiate.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 05:44:20 PM
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
	MovementLoopAddLocation(NPC, -11.17, -4, -138.13, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 2.51, 0.3, -138.66, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, -11.17, -4, -138.13, 2, math.random(1,10))
end


