--[[
	Script Name		:	bloodsaber_initiate4.lua
	Script Purpose	:	Waypoint Path for bloodsaber_initiate4.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 06:12:45 PM
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
	MovementLoopAddLocation(NPC, 24.88, -4, -137.96, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 14.94, 0, -137.82, 2, 0)
	MovementLoopAddLocation(NPC, 11.9, 0, -134.19, 2, math.random(1,15))
	MovementLoopAddLocation(NPC, 14.94, 0, -137.82, 2, 0)
	MovementLoopAddLocation(NPC, 24.88, -4, -137.96, 2, math.random(1,10))
end


