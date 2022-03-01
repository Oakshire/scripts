--[[
	Script Name		:	a_duck3.lua
	Script Purpose	:	Waypoint Path for a_duck3.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 04:00:57 PM
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
	MovementLoopAddLocation(NPC, 758.19, -16.93, -308.73, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.61, -17.31, -313.38, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.98, -17.86, -321.02, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.16, -18.82, -331.55, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 781.58, -21.93, -345.87, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.77, -18.14, -325.79, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 740.01, -16.72, -313.55, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 741.82, -16.2, -301.39, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 715.85, -17.04, -292.22, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 741.82, -16.2, -301.39, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 740.01, -16.72, -313.55, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 767.77, -18.14, -325.79, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 781.58, -21.93, -345.87, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 784.16, -18.82, -331.55, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.98, -17.86, -321.02, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 778.61, -17.31, -313.38, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 758.19, -16.93, -308.73, 2, math.random(0,3))
end


