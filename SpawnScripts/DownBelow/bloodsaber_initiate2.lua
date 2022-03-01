--[[
	Script Name		:	bloodsabe_initiate2.lua
	Script Purpose	:	Waypoint Path for bloodsabe_initiate2.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 05:46:36 PM
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
	MovementLoopAddLocation(NPC, -12.65, -4, -137.81, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 1.24, 0, -137.37, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, -12.65, -4, -137.81, 2, math.random(1,10))
end


