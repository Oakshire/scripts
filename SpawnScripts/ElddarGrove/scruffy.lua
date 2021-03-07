--[[
	Script Name		:	scruffy.lua
	Script Purpose	:	Waypoint Path for scruffy.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 03:20:13 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 595.9, -24.92, -221.45, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 604.07, -21.25, -226.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 594.68, -24.82, -221.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 589.18, -28.06, -231.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 602.88, -31.22, -239.9, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 611.53, -35.22, -228.98, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 602.88, -31.22, -239.9, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 589.18, -28.06, -231.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 594.68, -24.82, -221.97, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 604.07, -21.25, -226.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 595.9, -24.92, -221.45, 2, math.random(0,8))
end


