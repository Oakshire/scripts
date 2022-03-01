--[[
	Script Name		:	tomb_priest3.lua
	Script Purpose	:	Waypoint Path for tomb_priest3.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:13:17 PM
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
	MovementLoopAddLocation(NPC, 235.49, 0.77, -156.88, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.97, 0, -173.39, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.84, 0, -155.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 234.62, 0, -162.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 232.86, 0.01, -155.09, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 234.62, 0, -162.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.84, 0, -155.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 237.97, 0, -173.39, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 235.49, 0.77, -156.88, 2, math.random(0,7))
end


