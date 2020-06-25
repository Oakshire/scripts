--[[
	Script Name		:	bloodsaber_adjunct.lua
	Script Purpose	:	Waypoint Path for bloodsaber_adjunct.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 05:59:36 PM
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
	MovementLoopAddLocation(NPC, 3.24, -4, -158.31, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 7.32, -4, -158.16, 2, 0)
	MovementLoopAddLocation(NPC, 7.16, -0.01, -146.12, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 7.32, -4, -158.16, 2, 0)
	MovementLoopAddLocation(NPC, 3.24, -4, -158.31, 2, math.random(1,10))
end


