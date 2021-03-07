--[[
	Script Name		:	grove_deer4.lua
	Script Purpose	:	Waypoint Path for grove_deer4.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:53:23 PM
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
	MovementLoopAddLocation(NPC, 596.59, -21.75, -267.73, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 596.5, -21.76, -277.14, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 587.26, -21.25, -284, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 575.74, -20.9, -305.12, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 565.93, -21.18, -305.52, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 566.59, -21, -300.8, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 574.18, -20.72, -297.29, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 588.13, -21.3, -283.93, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 601.56, -22.19, -285.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 589.36, -22.09, -270.43, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 595.7, -21.71, -278.26, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 589.03, -21.21, -276.91, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 586.33, -21.22, -279.5, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 579.02, -20.99, -324.21, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 566.13, -21.75, -323.24, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 565.06, -21.74, -323.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 564.71, -21.95, -317.62, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 584.54, -20.82, -297.82, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 601.99, -22.2, -295.61, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 584.54, -20.82, -297.82, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 564.71, -21.95, -317.62, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 565.06, -21.74, -323.3, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 566.13, -21.75, -323.24, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 579.02, -20.99, -324.21, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 586.33, -21.22, -279.5, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 589.03, -21.21, -276.91, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 595.7, -21.71, -278.26, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 589.36, -22.09, -270.43, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 601.56, -22.19, -285.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 588.13, -21.3, -283.93, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 574.18, -20.72, -297.29, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 566.59, -21, -300.8, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 565.93, -21.18, -305.52, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 575.74, -20.9, -305.12, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 587.26, -21.25, -284, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 596.5, -21.76, -277.14, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 596.59, -21.75, -267.73, 2, math.random(0,25))
end


