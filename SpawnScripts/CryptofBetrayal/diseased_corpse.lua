--[[
	Script Name		:	diseased_corpse.lua
	Script Purpose	:	Waypoint Path for diseased_corpse.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 01:34:43 AM
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
	MovementLoopAddLocation(NPC, 173.08, 13.92, -199.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.93, 12.29, -210.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.18, 10.88, -210.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.64, 9.93, -206.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.36, 8.7, -196.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.51, 8.1, -192.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 160.44, 6.89, -185.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 162.86, 6.89, -177.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.43, 6.89, -174.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 178.51, 6.9, -173.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 181.19, 6.87, -170.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 181.6, 6.91, -156.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 170.25, 6.96, -142.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.3, 6.89, -139.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.83, 6.98, -138.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.39, 7.12, -143.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.48, 7.04, -146.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.87, 6.96, -168.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.29, 6.82, -172.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 134.1, 7.01, -171.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.12, 7.08, -162.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 127.81, 6.3, -148.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.7, 7, -125.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 127.81, 6.3, -148.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.12, 7.08, -162.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 134.1, 7.01, -171.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.29, 6.82, -172.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.87, 6.96, -168.78, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.48, 7.04, -146.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.39, 7.12, -143.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.83, 6.98, -138.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.3, 6.89, -139.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 170.25, 6.96, -142.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 181.6, 6.91, -156.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 181.19, 6.87, -170.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 178.51, 6.9, -173.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.43, 6.89, -174.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 162.86, 6.89, -177.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 160.44, 6.89, -185.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.51, 8.1, -192.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.36, 8.7, -196.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.64, 9.93, -206.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.18, 10.88, -210.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.93, 12.29, -210.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 173.08, 13.92, -199.17, 2, math.random(0,5))
end


