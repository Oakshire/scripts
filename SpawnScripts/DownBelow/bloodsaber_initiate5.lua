--[[
	Script Name		:	bloodsaber_initiate5.lua
	Script Purpose	:	Waypoint Path for bloodsaber_initiate5.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 06:15:18 PM
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
	MovementLoopAddLocation(NPC, 7.15, 0, -130.79, 2, math.random(1,20))
	MovementLoopAddLocation(NPC, 14.36, 0, -138.67, 2, math.random(1,30))
	MovementLoopAddLocation(NPC, 7.15, 0, -130.79, 2, math.random(1,20))
end


