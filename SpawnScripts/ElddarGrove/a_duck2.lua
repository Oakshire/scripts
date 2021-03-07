--[[
	Script Name		:	a_duck2.lua
	Script Purpose	:	Waypoint Path for a_duck2.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 04:04:06 PM
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
	MovementLoopAddLocation(NPC, 774.15, -17.52, -313.99, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 742.64, -16.15, -302.61, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 734.94, -17.04, -295.52, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 713.71, -17.05, -293.64, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 675.14, -22.3, -312.11, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 713.71, -17.05, -293.64, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 734.94, -17.04, -295.52, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 742.64, -16.15, -302.61, 2, math.random(0,3))
	MovementLoopAddLocation(NPC, 774.15, -17.52, -313.99, 2, math.random(0,3))
end


