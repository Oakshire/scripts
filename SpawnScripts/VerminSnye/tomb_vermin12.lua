--[[
	Script Name		:	tomb_vermin12.lua
	Script Purpose	:	Waypoint Path for tomb_vermin12.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:30:05 AM
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
	MovementLoopAddLocation(NPC, 60.7, 0.01, -44.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.09, 0.11, -47.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.79, -0.2, -48.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.79, 0, -40.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.35, 0.16, -20.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.58, 0.59, 12.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.58, 0.44, -19.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.25, -0.11, -42.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.87, 0.56, -60.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.69, 0.52, -70.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.33, 0.14, -82.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.04, 0.03, -92.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 51.34, -0.05, -107, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 66.59, -0.15, -107.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.81, 0.52, -112.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 76.44, -0.11, -121.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 74.69, 0.57, -139.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.18, 0.09, -153.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 75.95, 0.54, -139.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 74.37, -0.03, -123.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.1, 0.51, -114.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 63.55, 0.02, -108.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 50.34, -0.1, -106.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.78, -0.1, -97.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.31, 0.07, -90.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.44, 0.53, -84.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 67.36, -0.03, -81.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.55, 0.57, -81.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 93.82, 0.18, -81.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 95.62, -0.13, -74.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 95.86, 0.01, -63.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.9, 0.03, -37.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 88.05, 0.55, -32.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.9, 0.03, -37.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 95.86, 0.01, -63.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 95.62, -0.13, -74.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 93.82, 0.18, -81.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.55, 0.57, -81.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 67.36, -0.03, -81.75, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.44, 0.53, -84.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 52.31, 0.07, -90.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 42.78, -0.1, -97.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 50.34, -0.1, -106.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 63.55, 0.02, -108.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.1, 0.51, -114.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 74.37, -0.03, -123.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 75.95, 0.54, -139.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 84.18, 0.09, -153.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 74.69, 0.57, -139.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 76.44, -0.11, -121.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 71.81, 0.52, -112.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 66.59, -0.15, -107.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 51.34, -0.05, -107, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.04, 0.03, -92.01, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.33, 0.14, -82.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.69, 0.52, -70.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.87, 0.56, -60.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.25, -0.11, -42.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.58, 0.44, -19.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 28.58, 0.59, 12.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 27.35, 0.16, -20.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 44.79, 0, -40.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 45.79, -0.2, -48.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 59.09, 0.11, -47.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 60.7, 0.01, -44.55, 2, math.random(0,5))
end


