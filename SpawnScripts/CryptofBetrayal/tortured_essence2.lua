--[[
	Script Name		:	tortured_essence2.lua
	Script Purpose	:	Waypoint Path for tortured_essence2.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 03:11:50 PM
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
	MovementLoopAddLocation(NPC, 150.66, 6.99, -17.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.41, 6.99, -21.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.36, 6.99, -21.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.32, 7.55, -14.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.25, 6.99, -4.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.74, 6.99, -3.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.22, 6.99, -3.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.34, 7.72, -10.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.71, 6.99, -10.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.71, 6.99, -10.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.48, 6.99, -22.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.78, 6.99, -21.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.85, 6.99, -22.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 144.57, 6.99, -28.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.41, 6.99, -27.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.68, 7.66, -33.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.27, 6.99, -20.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.02, 6.99, -21.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.24, 6.99, -12.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.31, 6.99, -8.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.24, 6.99, -12.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.02, 6.99, -21.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.27, 6.99, -20.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.68, 7.66, -33.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.41, 6.99, -27.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 144.57, 6.99, -28.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.85, 6.99, -22.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.78, 6.99, -21.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.48, 6.99, -22.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.71, 6.99, -10.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.71, 6.99, -10.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.34, 7.72, -10.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.22, 6.99, -3.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.74, 6.99, -3.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.25, 6.99, -4.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.32, 7.55, -14.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.36, 6.99, -21.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.41, 6.99, -21.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.66, 6.99, -17.04, 2, math.random(0,5))
end


