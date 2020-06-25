--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426876.lua
	Script Purpose	:	Waypoint Path for atriggerfish426876.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:50 
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
	MovementLoopAddLocation(NPC, -42.66, -11.92, 13.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.55, -11.59, 10.91, 2, 0)
	MovementLoopAddLocation(NPC, -40.23, -10.44, 6.32, 2, 0)
	MovementLoopAddLocation(NPC, -40.02, -10.28, -0.84, 2, 0)
	MovementLoopAddLocation(NPC, -38.44, -10.2, -6.86, 2, 0)
	MovementLoopAddLocation(NPC, -29.33, -10.4, -54.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.79, -10.39, -59.09, 2, 0)
	MovementLoopAddLocation(NPC, -21.9, -10.28, -75.71, 2, 0)
	MovementLoopAddLocation(NPC, -22.2, -10.59, -76.35, 2, 0)
	MovementLoopAddLocation(NPC, -20.32, -11.08, -79.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.97, -10.7, -76.74, 2, 0)
	MovementLoopAddLocation(NPC, -21.79, -10.32, -75.13, 2, 0)
	MovementLoopAddLocation(NPC, -26.2, -10.2, -67.09, 2, 0)
	MovementLoopAddLocation(NPC, -31.93, -10.95, -52.94, 2, 0)
	MovementLoopAddLocation(NPC, -34.38, -11.49, -46.04, 2, 0)
	MovementLoopAddLocation(NPC, -31.65, -11.86, -40.14, 2, 0)
	MovementLoopAddLocation(NPC, -31.88, -11.64, -33.67, 2, 0)
	MovementLoopAddLocation(NPC, -34.49, -12.2, -31.57, 2, 0)
	MovementLoopAddLocation(NPC, -37.79, -11.88, -31.36, 2, 0)
	MovementLoopAddLocation(NPC, -38.89, -11.83, -29.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.05, -10.97, -22.1, 2, 0)
	MovementLoopAddLocation(NPC, -47.21, -10.27, -10.83, 2, 0)
	MovementLoopAddLocation(NPC, -49.55, -10.97, -6.82, 2, 0)
	MovementLoopAddLocation(NPC, -49.55, -11.06, -4.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.28, -10.49, -6.57, 2, 0)
	MovementLoopAddLocation(NPC, -64.84, -10.3, -11.66, 2, 0)
	MovementLoopAddLocation(NPC, -76.2, -10.36, -13.96, 2, 0)
	MovementLoopAddLocation(NPC, -79.03, -10.97, -16.36, 2, 0)
	MovementLoopAddLocation(NPC, -81.49, -11.46, -17.42, 2, 0)
	MovementLoopAddLocation(NPC, -84.03, -11.77, -17.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.08, -11.41, -10.01, 2, 0)
	MovementLoopAddLocation(NPC, -69.77, -10.98, 13.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.25, -10.4, 12.31, 2, 0)
	MovementLoopAddLocation(NPC, -64.17, -10.2, 7.3, 2, 0)
	MovementLoopAddLocation(NPC, -60.14, -10.33, 5.12, 2, 0)
	MovementLoopAddLocation(NPC, -53.29, -10.51, -1.26, 2, 0)
	MovementLoopAddLocation(NPC, -46.53, -10.2, -9.62, 2, 0)
	MovementLoopAddLocation(NPC, -18.09, -11.25, -25.75, 2, 0)
	MovementLoopAddLocation(NPC, -14.09, -12.02, -30.38, 2, 0)
	MovementLoopAddLocation(NPC, -9.74, -12.13, -32.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.99, -12.1, -21.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.26, -11.8, -11.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.4, -11.59, -16.89, 2, 0)
	MovementLoopAddLocation(NPC, -27.45, -11.68, -19.86, 2, 0)
	MovementLoopAddLocation(NPC, -30.49, -11.95, -24.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.84, -11.41, -24.86, 2, 0)
	MovementLoopAddLocation(NPC, -43.44, -11.03, -23.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.98, -10.43, -11.06, 2, 0)
	MovementLoopAddLocation(NPC, -41.67, -10.51, 7.7, 2, 0)
	MovementLoopAddLocation(NPC, -42.85, -11.69, 11.66, 2, 0)
	MovementLoopAddLocation(NPC, -42.99, -11.97, 13.3, 2, 0)
end

