--[[
	Script Name		:	bloodsaber_initiate3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_initiate3.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 05:57:35 PM
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
	MovementLoopAddLocation(NPC, 7.03, -4, -161.23, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 6.92, -0.03, -146.21, 2, 0)
	MovementLoopAddLocation(NPC, 3.57, 0.3, -141.32, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 6.92, -0.03, -146.21, 2, 0)
	MovementLoopAddLocation(NPC, 7.03, -4, -161.23, 2, math.random(1,10))
end


