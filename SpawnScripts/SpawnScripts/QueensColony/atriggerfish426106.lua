--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426106.lua
	Script Purpose	:	Waypoint Path for atriggerfish426106.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:52:30 
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
	MovementLoopAddLocation(NPC, -86.69, -12.04, 11.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.68, -11.82, 13.34, 2, 0)
	MovementLoopAddLocation(NPC, -82.31, -11.39, 14.47, 2, 0)
	MovementLoopAddLocation(NPC, -69.84, -10, 17.04, 2, 0)
	MovementLoopAddLocation(NPC, -62.5, -10, 21.71, 2, 0)
	MovementLoopAddLocation(NPC, -49.81, -12.08, 23.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.84, -12.4, 23.57, 2, 0)
	MovementLoopAddLocation(NPC, -39.63, -13.68, 24.47, 2, 0)
	MovementLoopAddLocation(NPC, -33.76, -14.27, 27.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.87, -13.4, 22.65, 2, 0)
	MovementLoopAddLocation(NPC, -43.48, -11.92, 19.29, 2, 0)
	MovementLoopAddLocation(NPC, -47.24, -10.75, 13.54, 2, 0)
	MovementLoopAddLocation(NPC, -49.09, -10.38, 10.17, 2, 0)
	MovementLoopAddLocation(NPC, -62.54, -10.97, -5.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.77, -10.21, 4.96, 2, 0)
	MovementLoopAddLocation(NPC, -29.33, -10.26, 13.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.52, -10.21, 10.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.52, -10.46, -0.92, 2, 0)
	MovementLoopAddLocation(NPC, -19.06, -10.99, -48.33, 2, 0)
	MovementLoopAddLocation(NPC, -14.56, -10.97, -55.99, 2, 0)
	MovementLoopAddLocation(NPC, -10.66, -10.97, -66.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.56, -11.08, -48.11, 2, 0)
	MovementLoopAddLocation(NPC, -6.61, -11.53, -26.3, 2, 0)
	MovementLoopAddLocation(NPC, -8.33, -12.52, -15, 2, 0)
	MovementLoopAddLocation(NPC, -10.7, -12.71, -11.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.25, -12.29, -10.7, 2, 0)
	MovementLoopAddLocation(NPC, -24.89, -11.45, -9.84, 2, 0)
	MovementLoopAddLocation(NPC, -30.11, -10.49, -8.66, 2, 0)
	MovementLoopAddLocation(NPC, -36.71, -10.38, -7.79, 2, 0)
	MovementLoopAddLocation(NPC, -73.29, -10.31, 3.22, 2, 0)
	MovementLoopAddLocation(NPC, -83.56, -11.65, 7.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.13, -11.8, 9.28, 2, 0)
end

