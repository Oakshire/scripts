--[[
	Script Name		:	crawler_hatchling3.lua
	Script Purpose	:	Waypoint Path for crawler_hatchling3.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 10:59:19 PM
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
	MovementLoopAddLocation(NPC, -7.95, -0.12, -95.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.18, -0.07, -104.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -1.62, -0.06, -97.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.54, -0.05, -100.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.38, -0.08, -100.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.33, -0.02, -96.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.85, -0.04, -92.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.33, -0.02, -89.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.57, -0.06, -86.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -17.73, 0.2, -93.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.92, 0.31, -108.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.83, -0.06, -89.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.87, -0.1, -81.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.22, -0.12, -71.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.6, -0.08, -64.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.13, -0.09, -67.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -55.18, -0.08, -68.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -50.31, -0.05, -71.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -48.31, -0.09, -64.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.44, -0.03, -63.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.67, -0.1, -68.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.59, -0.07, -65.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.38, -0.03, -70.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -26.32, -0.04, -72.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.59, -0.08, -75.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -25.13, -0.09, -81.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -21.97, -0.02, -77.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -25.13, -0.09, -81.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.59, -0.08, -75.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -26.32, -0.04, -72.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.38, -0.03, -70.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.59, -0.07, -65.58, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.67, -0.1, -68.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.44, -0.03, -63.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -48.31, -0.09, -64.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -50.31, -0.05, -71.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -55.18, -0.08, -68.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.13, -0.09, -67.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -45.6, -0.08, -64.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -32.22, -0.12, -71.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.87, -0.1, -81.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.83, -0.06, -89.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.92, 0.31, -108.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -17.73, 0.2, -93.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.57, -0.06, -86.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.33, -0.02, -89.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -6.85, -0.04, -92.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.33, -0.02, -96.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.38, -0.08, -100.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.54, -0.05, -100.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -1.62, -0.06, -97.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.18, -0.07, -104.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -7.95, -0.12, -95.86, 2, math.random(0,5))
end


