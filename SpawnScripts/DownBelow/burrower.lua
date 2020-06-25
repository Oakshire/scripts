--[[
	Script Name		:	burrower.lua
	Script Purpose	:	Waypoint Path for burrower.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:32:19 PM
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
	MovementLoopAddLocation(NPC, -12.18, -0.06, -51.92, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.51, -0.09, -49.89, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.05, -0.06, -51.26, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.27, 0.12, -47.91, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.9, 0.53, -52.98, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.79, -0.1, -59.82, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 7.88, -0.04, -57.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 1.22, -0.04, -62.93, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.97, -0.08, -57.24, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 15, -0.11, -60.8, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.34, 0.51, -67.77, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.62, -0.48, -74.79, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.89, -0.92, -77.83, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.3, -0.24, -86.25, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.91, 0.07, -87.14, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.44, 0.18, -95.11, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 13.87, 0.13, -104.19, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 11.42, 0.29, -101.65, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.33, 0.03, -99.6, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 17.99, 0.14, -94.94, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.07, 0.22, -95.19, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 24.51, 0.2, -90.25, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 20.12, 0.32, -89.3, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.84, -0.92, -78.08, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 20.12, 0.32, -89.3, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 24.51, 0.2, -90.25, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.07, 0.22, -95.19, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 17.99, 0.14, -94.94, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.33, 0.03, -99.6, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 11.42, 0.29, -101.65, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 13.87, 0.13, -104.19, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.44, 0.18, -95.11, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.91, 0.07, -87.14, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.3, -0.24, -86.25, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.89, -0.92, -77.83, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.62, -0.48, -74.79, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.34, 0.51, -67.77, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 15, -0.11, -60.8, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.97, -0.08, -57.24, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 1.22, -0.04, -62.93, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 7.88, -0.04, -57.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.79, -0.1, -59.82, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.9, 0.53, -52.98, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.27, 0.12, -47.91, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.05, -0.06, -51.26, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.51, -0.09, -49.89, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.18, -0.06, -51.92, 2, math.random(0,2))
end


