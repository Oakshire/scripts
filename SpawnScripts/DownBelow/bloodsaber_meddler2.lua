--[[
	Script Name		:	bloodsaber_meddler2.lua
	Script Purpose	:	Waypoint Path for bloodsaber_meddler2.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 06:09:08 PM
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
	MovementLoopAddLocation(NPC, 27.07, -4, -141.64, 2, math.random(1,20))
	MovementLoopAddLocation(NPC, 27.25, -4, -137.87, 2, 0)
	MovementLoopAddLocation(NPC, 29.98, -4, -137.97, 2, math.random(1,20))
	MovementLoopAddLocation(NPC, 26.53, -4, -137.93, 2, 0)
	MovementLoopAddLocation(NPC, 27.72, -4, -134.6, 2, math.random(1,20))
	MovementLoopAddLocation(NPC, 26.53, -4, -137.93, 2, 0)
	MovementLoopAddLocation(NPC, 29.98, -4, -137.97, 2, math.random(1,20))
	MovementLoopAddLocation(NPC, 27.25, -4, -137.87, 2, 0)
	MovementLoopAddLocation(NPC, 27.07, -4, -141.64, 2, math.random(1,20))
end


