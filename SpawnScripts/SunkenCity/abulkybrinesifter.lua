--[[
	Script Name		:	SpawnScripts/SunkenCity/abulkybrinesifter.lua
	Script Purpose	:	Waypoint Path for a bulky brine sifter.lua
	Script Author	:	Cynnar
	Script Date		:	02/09/2019 01:14:53 AM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, 0.49, -0.14, -68.87, 2, 0)
	MovementLoopAddLocation(NPC, -0.06, -0.25, -56.61, 2, 0)
	MovementLoopAddLocation(NPC, 4.57, -0.18, -47, 2, 0)
	MovementLoopAddLocation(NPC, 4.30, -0.49, -29.84, 2, 0)
	MovementLoopAddLocation(NPC, 4.10, -0.51, -19.36, 2, 0)
	MovementLoopAddLocation(NPC, 5.92, -0.52, -15.09, 2, 0)
	MovementLoopAddLocation(NPC, 10.51, -0.47, -12.75, 2, 0)
	MovementLoopAddLocation(NPC, 11.95, -0.3, -9.38, 2, 0)
	MovementLoopAddLocation(NPC, 10.46, -0.12, -5.44, 2, 0)
	MovementLoopAddLocation(NPC, 7.87, -0.09, -1.98, 2, 0)
	MovementLoopAddLocation(NPC, 5.26, -0.09, 1.58, 2, 0)
	MovementLoopAddLocation(NPC, 1.13, -0.09, 6.14, 2, 0)
	MovementLoopAddLocation(NPC, -4.33, -0.2, 10.47, 2, 0)
	MovementLoopAddLocation(NPC, -12.32, -0.48, 5.19, 2, 0)
	MovementLoopAddLocation(NPC, -25.47, -0.58, 4.62, 2, 0)
	MovementLoopAddLocation(NPC, -29.07, -0.58, -0.44, 2, 0)
	MovementLoopAddLocation(NPC, -30.69, -0.45, -9.55, 2, 0)
	MovementLoopAddLocation(NPC, -27.89, -0.62, -16.4, 2, 0)
	MovementLoopAddLocation(NPC, -32.25, -0.64, -21.89, 2, 0)
	MovementLoopAddLocation(NPC, -31.3, -0.58, -29.71, 2, 0)
	MovementLoopAddLocation(NPC, -33.62, -0.52, -36.66, 2, 0)
	MovementLoopAddLocation(NPC, -36.12, -0.41, -42.17, 2, 0)
	MovementLoopAddLocation(NPC, -36.27, -0.55, -49.78, 2, 0)
	MovementLoopAddLocation(NPC, -36.31, -0.55, -51.41, 2, 0)
	MovementLoopAddLocation(NPC, -37.47, -0.55, -54.43, 2, 0, "changegrid_A")
	MovementLoopAddLocation(NPC, -38.09, -0.6, -58.69, 2, 0)
	MovementLoopAddLocation(NPC, -43.54, -0.59, -64.95, 2, 0)
	MovementLoopAddLocation(NPC, -53.54, -0.51, -72.95, 2, 0)
	MovementLoopAddLocation(NPC, -57, -0.52, -72.2, 2, 0)
	MovementLoopAddLocation(NPC, -60.32, -0.62, -62.67, 2, 0)
	MovementLoopAddLocation(NPC, -71.1, -0.58, -65.38, 2, 0)
	MovementLoopAddLocation(NPC, -77.64, -0.57, -48.99, 2, 0)
	MovementLoopAddLocation(NPC, -81.12, -0.62, -35.39, 2, 0)
	MovementLoopAddLocation(NPC, -76.31, -0.57, -23.72, 2, 0)
	MovementLoopAddLocation(NPC, -76.22, -0.57, -17.26, 2, 0)
	MovementLoopAddLocation(NPC, -75.99, -0.41, -13.83, 2, 0)
	MovementLoopAddLocation(NPC, -76.82, -0.59, -8.79, 2, 0)
	MovementLoopAddLocation(NPC, -77.04, -0.33, -6.27, 2, 0)
	MovementLoopAddLocation(NPC, -82.07, -0.15, -2.14, 2, 0)
	MovementLoopAddLocation(NPC, -83.75, -0.22, 4.71, 2, 0)
	MovementLoopAddLocation(NPC, -81.92, -0.26, 13.09, 2, 0)
	MovementLoopAddLocation(NPC, -78.61, -0.14, 16.53, 2, 0)
	MovementLoopAddLocation(NPC, -70.17, -0.59, 19.36, 2, 0)
	MovementLoopAddLocation(NPC, -61.11, -0.57, 19.82, 2, 0)
	MovementLoopAddLocation(NPC, -49.5, -0.54, 27.52, 2, 0)
	MovementLoopAddLocation(NPC, -43.64, -0.57, 29.15, 2, 0)
	MovementLoopAddLocation(NPC, -34.96, -0.54, 35.1, 2, 0)
	MovementLoopAddLocation(NPC, -29.64, -0.55, 30.88, 2, 0)
	MovementLoopAddLocation(NPC, -29.63, -0.53, 23.55, 2, 0)
	MovementLoopAddLocation(NPC, -33, -0.55, 22.3, 2, 0)
	MovementLoopAddLocation(NPC, -36.09, -0.57, 17.5, 2, 0)
	MovementLoopAddLocation(NPC, -35.76, -0.34, 13.22, 2, 0, "changegrid_B")
	MovementLoopAddLocation(NPC, -33.37, -0.58, 4.06, 2, 0)
	MovementLoopAddLocation(NPC, -10.85, -0.43, 4.83, 2, 0)
	MovementLoopAddLocation(NPC, -3.45, -0.18, -5.73, 2, 0)
	MovementLoopAddLocation(NPC, 2.18, -0.47, -13.18, 2, 0)
	MovementLoopAddLocation(NPC, -0.51, -0.47, -28.74, 2, 0)
	MovementLoopAddLocation(NPC, -11, -0.49, -34.81, 2, 0)
	MovementLoopAddLocation(NPC, -12.51, -0.5, -42.08, 2, 0)
	MovementLoopAddLocation(NPC, -10.16, -0.51, -50.14, 2, 0)
	MovementLoopAddLocation(NPC, -8.25, -0.49, -54.75, 2, 0)
	MovementLoopAddLocation(NPC, -13.09, -0.6, -60.18, 2, 0)
	MovementLoopAddLocation(NPC, -12.29, -0.7, -66.36, 2, 0)
	MovementLoopAddLocation(NPC, -11.37, -0.77, -70.38, 2, 0)
	MovementLoopAddLocation(NPC, -5.07, -0.55, -71.9, 2, 0)
	MovementLoopAddLocation(NPC, 0.38, -0.16, -73.7, 2, 0)
	MovementLoopAddLocation(NPC, 5.03, 0.13, -73.73, 2, 0)
	MovementLoopAddLocation(NPC, 4.44, 0.11, -73.18, 2, 0)
end

function changegrid_A(NPC)
	SetGridID(NPC, 3131284342)
end

function changegrid_B(NPC)
	SetGridID(NPC, 496550087)
end