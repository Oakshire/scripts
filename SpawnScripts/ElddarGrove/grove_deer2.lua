--[[
	Script Name		:	grove_deer.lua
	Script Purpose	:	Waypoint Path for grove_deer.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:43:53 PM
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
	MovementLoopAddLocation(NPC, 611.06, -21.13, -232.65, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 608.89, -21.08, -249.38, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 610.58, -21.14, -254.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 638.56, -19.07, -258.65, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 651.06, -19.2, -270.12, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 687.04, -19, -275.61, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 698.66, -18.44, -301.41, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 697.31, -17.2, -329.16, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 724.46, -17.98, -333.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 743.54, -16.38, -308.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 724.46, -17.98, -333.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 697.31, -17.2, -329.16, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 698.66, -18.44, -301.41, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 687.04, -19, -275.61, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 651.06, -19.2, -270.12, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 638.56, -19.07, -258.65, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 610.58, -21.14, -254.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 608.89, -21.08, -249.38, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 611.06, -21.13, -232.65, 2, math.random(0,25))
end


