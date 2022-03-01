--[[
	Script Name		:	deathly_scarab3.lua
	Script Purpose	:	Waypoint Path for deathly_scarab3.lua
	Script Author	:	Devn00b
	Script Date		:	05/18/2020 11:05:57 AM
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
	MovementLoopAddLocation(NPC, 129.97, 7, -87.27, 2, 0)
	MovementLoopAddLocation(NPC, 122.72, 7, -87.55, 2, 0)
	MovementLoopAddLocation(NPC, 121.74, 6.86, -79.05, 2, 0)
	MovementLoopAddLocation(NPC, 118.58, 6.86, -71.67, 2, 0)
	MovementLoopAddLocation(NPC, 122.77, 6.87, -62.91, 2, 0)
	MovementLoopAddLocation(NPC, 135.77, 6.85, -72.2, 2, 0)
	MovementLoopAddLocation(NPC, 151.56, 6.96, -70.54, 2, 0)
	MovementLoopAddLocation(NPC, 156.44, 6.93, -60.73, 2, 0)
	MovementLoopAddLocation(NPC, 149.06, 6.93, -52.64, 2, 0)
	MovementLoopAddLocation(NPC, 148.62, 6.99, -42.35, 2, 0)
	MovementLoopAddLocation(NPC, 156.83, 6.99, -41.47, 2, 0)
	MovementLoopAddLocation(NPC, 155.45, 6.99, -30.42, 2, 0)
	MovementLoopAddLocation(NPC, 146.06, 6.99, -25.58, 2, 0)
	MovementLoopAddLocation(NPC, 145.74, 6.99, -6.92, 2, 0)
	MovementLoopAddLocation(NPC, 153.84, 6.99, -4.2, 2, 0)
	MovementLoopAddLocation(NPC, 153.36, 6.99, 4.3, 2, 0)
	MovementLoopAddLocation(NPC, 137.46, 6.99, 5.01, 2, 0)
	MovementLoopAddLocation(NPC, 136.21, 6.99, 1.79, 2, 0)
	MovementLoopAddLocation(NPC, 127.41, 6.99, 1.95, 2, 0)
	MovementLoopAddLocation(NPC, 119.27, 6.99, 5.04, 2, 0)
	MovementLoopAddLocation(NPC, 112.69, 6.84, 5.26, 2, 0)
	MovementLoopAddLocation(NPC, 106.09, 6.87, 9.84, 2, 0)
	MovementLoopAddLocation(NPC, 91.82, 6.87, 18.52, 2, 0)
	MovementLoopAddLocation(NPC, 71.16, 6.84, 17.02, 2, 0)
	MovementLoopAddLocation(NPC, 63.09, 6.87, 10.01, 2, 0)
	MovementLoopAddLocation(NPC, 62.82, 6.86, -18.29, 2, 0)
	MovementLoopAddLocation(NPC, 49.16, 6.81, -21.21, 2, 0)
	MovementLoopAddLocation(NPC, 41.85, 7, -28.49, 2, 0)
	MovementLoopAddLocation(NPC, 34.06, 6.72, -33.03, 2, 0)
	MovementLoopAddLocation(NPC, 32.44, 6.84, -42.28, 2, 0)
	MovementLoopAddLocation(NPC, 27.33, 7.39, -44.39, 2, 0)
	MovementLoopAddLocation(NPC, 2.16, 7.44, -43.4, 2, 0)
	MovementLoopAddLocation(NPC, -24.3, 6.82, -17.31, 2, 0)
	MovementLoopAddLocation(NPC, 2.16, 7.44, -43.4, 2, 0)
	MovementLoopAddLocation(NPC, 27.33, 7.39, -44.39, 2, 0)
	MovementLoopAddLocation(NPC, 32.44, 6.84, -42.28, 2, 0)
	MovementLoopAddLocation(NPC, 34.06, 6.72, -33.03, 2, 0)
	MovementLoopAddLocation(NPC, 41.85, 7, -28.49, 2, 0)
	MovementLoopAddLocation(NPC, 49.16, 6.81, -21.21, 2, 0)
	MovementLoopAddLocation(NPC, 62.82, 6.86, -18.29, 2, 0)
	MovementLoopAddLocation(NPC, 63.09, 6.87, 10.01, 2, 0)
	MovementLoopAddLocation(NPC, 71.16, 6.84, 17.02, 2, 0)
	MovementLoopAddLocation(NPC, 91.82, 6.87, 18.52, 2, 0)
	MovementLoopAddLocation(NPC, 106.09, 6.87, 9.84, 2, 0)
	MovementLoopAddLocation(NPC, 112.69, 6.84, 5.26, 2, 0)
	MovementLoopAddLocation(NPC, 119.27, 6.99, 5.04, 2, 0)
	MovementLoopAddLocation(NPC, 127.41, 6.99, 1.95, 2, 0)
	MovementLoopAddLocation(NPC, 136.21, 6.99, 1.79, 2, 0)
	MovementLoopAddLocation(NPC, 137.46, 6.99, 5.01, 2, 0)
	MovementLoopAddLocation(NPC, 153.36, 6.99, 4.3, 2, 0)
	MovementLoopAddLocation(NPC, 153.84, 6.99, -4.2, 2, 0)
	MovementLoopAddLocation(NPC, 145.74, 6.99, -6.92, 2, 0)
	MovementLoopAddLocation(NPC, 146.06, 6.99, -25.58, 2, 0)
	MovementLoopAddLocation(NPC, 155.45, 6.99, -30.42, 2, 0)
	MovementLoopAddLocation(NPC, 156.83, 6.99, -41.47, 2, 0)
	MovementLoopAddLocation(NPC, 148.62, 6.99, -42.35, 2, 0)
	MovementLoopAddLocation(NPC, 149.06, 6.93, -52.64, 2, 0)
	MovementLoopAddLocation(NPC, 156.44, 6.93, -60.73, 2, 0)
	MovementLoopAddLocation(NPC, 151.56, 6.96, -70.54, 2, 0)
	MovementLoopAddLocation(NPC, 135.77, 6.85, -72.2, 2, 0)
	MovementLoopAddLocation(NPC, 122.77, 6.87, -62.91, 2, 0)
	MovementLoopAddLocation(NPC, 118.58, 6.86, -71.67, 2, 0)
	MovementLoopAddLocation(NPC, 121.74, 6.86, -79.05, 2, 0)
	MovementLoopAddLocation(NPC, 122.72, 7, -87.55, 2, 0)
	MovementLoopAddLocation(NPC, 129.97, 7, -87.27, 2, 0)
end


