--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425812.lua
	Script Purpose	:	Waypoint Path for atriggerfish425812.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:11 
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
	MovementLoopAddLocation(NPC, 28.34, -14.34, -20.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.47, -14.31, -23.42, 2, 0)
	MovementLoopAddLocation(NPC, 44.19, -11.96, -32.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.4, -11.22, -41.03, 2, 0)
	MovementLoopAddLocation(NPC, 24.25, -11.33, -50.78, 2, 0)
	MovementLoopAddLocation(NPC, 20.23, -11.81, -54.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.89, -10.2, -63.17, 2, 0)
	MovementLoopAddLocation(NPC, 13.73, -10.43, -76.18, 2, 0)
	MovementLoopAddLocation(NPC, 14.26, -10.48, -79.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.04, -11.76, -75.2, 2, 0)
	MovementLoopAddLocation(NPC, 6.02, -12.71, -71.56, 2, 0)
	MovementLoopAddLocation(NPC, 4.58, -13.01, -69.93, 2, 0)
	MovementLoopAddLocation(NPC, 2.61, -13.49, -68.51, 2, 0)
	MovementLoopAddLocation(NPC, -0.4, -13.77, -68.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.15, -12.3, -67.61, 2, 0)
	MovementLoopAddLocation(NPC, -6.37, -11.11, -67.81, 2, 0)
	MovementLoopAddLocation(NPC, -10.62, -10.23, -70.13, 2, 0)
	MovementLoopAddLocation(NPC, -22.71, -10.2, -76.77, 2, 0)
	MovementLoopAddLocation(NPC, -25.54, -10.52, -78.54, 2, 0)
	MovementLoopAddLocation(NPC, -25.35, -11.31, -81.87, 2, 0)
	MovementLoopAddLocation(NPC, -24.09, -11.43, -83.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.59, -10.46, -77.96, 2, 0)
	MovementLoopAddLocation(NPC, -15.01, -10.2, -66.08, 2, 0)
	MovementLoopAddLocation(NPC, -10.55, -10.47, -58.06, 2, 0)
	MovementLoopAddLocation(NPC, 14.12, -11.49, -14.21, 2, 0)
	MovementLoopAddLocation(NPC, 17.88, -11.61, -8.25, 2, 0)
	MovementLoopAddLocation(NPC, 21.06, -12.34, -4.32, 2, 0)
	MovementLoopAddLocation(NPC, 24, -13.29, -1.87, 2, 0)
	MovementLoopAddLocation(NPC, 27.15, -13.51, 1.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.8, -13.46, 5.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.72, -15.34, -23.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.54, -13.53, -27.96, 2, 0)
	MovementLoopAddLocation(NPC, 28.61, -13.06, -30.9, 2, 0)
	MovementLoopAddLocation(NPC, 26.6, -12.06, -34.1, 2, 0)
	MovementLoopAddLocation(NPC, 24.5, -11.76, -37.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.53, -13.08, -30.48, 2, 0)
	MovementLoopAddLocation(NPC, 25.02, -14, -26.92, 2, 0)
end

