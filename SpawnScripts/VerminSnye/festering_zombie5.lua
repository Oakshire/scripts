--[[
	Script Name		:	festering_zombie5.lua
	Script Purpose	:	Waypoint Path for festering_zombie5.lua
	Script Author	:	Devn00b
	Script Date		:	06/21/2020 12:41:42 PM
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
	MovementLoopAddLocation(NPC, 6.86, 0, -11.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 4.96, 0, -8.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 7.31, 0, -7.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 9.51, 0, -6.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 10.42, 0, -8.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 13.76, 0, -4.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 5.8, 0, -11.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 8.37, 0, -10.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 5.8, 0, -11.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 13.76, 0, -4.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 10.42, 0, -8.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 9.51, 0, -6.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 7.31, 0, -7.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 4.96, 0, -8.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.86, 0, -11.22, 2, math.random(0,10))
end


