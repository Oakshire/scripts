--[[
	Script Name		:	lookoutx.lua
	Script Purpose	:	Waypoint Path for lookoutx.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 08:14:39 PM
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
	MovementLoopAddLocation(NPC, 20.12, 0.15, -95.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 7.2, -0.06, -109.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -0.14, -0.1, -103.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 7.2, -0.06, -109.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 20.12, 0.15, -95.87, 2, math.random(0,10))
end


