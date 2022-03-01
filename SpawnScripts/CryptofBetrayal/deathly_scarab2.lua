--[[
	Script Name		:	deathly_scarab2.lua
	Script Purpose	:	Waypoint Path for deathly_scarab2.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 02:17:17 AM
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
	MovementLoopAddLocation(NPC, 117.41, 7, -125.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.68, 7, -125.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.38, 7.08, -165.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.94, 6.92, -173.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 147.67, 7.18, -171.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.35, 7.05, -167.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.34, 6.83, -146.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.57, 7.02, -140.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.06, 6.95, -141.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 179.34, 7, -151.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 181.03, 6.87, -170.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 176.52, 7.35, -174.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.47, 6.9, -174.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 160.69, 6.89, -184.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.47, 6.9, -174.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 176.52, 7.35, -174.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 181.03, 6.87, -170.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 179.34, 7, -151.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.06, 6.95, -141.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.57, 7.02, -140.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.34, 6.83, -146.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.35, 7.05, -167.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 147.67, 7.18, -171.5, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.94, 6.92, -173.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.38, 7.08, -165.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.68, 7, -125.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.41, 7, -125.51, 2, math.random(0,5))
end


