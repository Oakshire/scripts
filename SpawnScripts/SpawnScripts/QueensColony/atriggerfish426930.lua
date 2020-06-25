--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426930.lua
	Script Purpose	:	Waypoint Path for atriggerfish426930.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:21 
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
	MovementLoopAddLocation(NPC, -64.94, -10.97, -8.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.32, -10.97, -11.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.06, -10.46, -11.32, 2, 0)
	MovementLoopAddLocation(NPC, -31.76, -10.5, -13.12, 2, 0)
	MovementLoopAddLocation(NPC, -15.06, -12.17, -12.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.38, -12.16, -35.15, 2, 0)
	MovementLoopAddLocation(NPC, -35.24, -12.95, -44.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.15, -12.13, -39.35, 2, 0)
	MovementLoopAddLocation(NPC, -44.02, -10.18, -27.04, 2, 0)
	MovementLoopAddLocation(NPC, -47, -10.17, -18.79, 2, 0)
	MovementLoopAddLocation(NPC, -52.24, -10.99, -8.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.99, -10.48, -5.27, 2, 0)
	MovementLoopAddLocation(NPC, -47.26, -10.21, 2.05, 2, 0)
	MovementLoopAddLocation(NPC, -42.52, -10.55, 10.98, 2, 0)
	MovementLoopAddLocation(NPC, -37.96, -12.32, 19.52, 2, 0)
	MovementLoopAddLocation(NPC, -36.46, -12.61, 21.53, 2, 0)
	MovementLoopAddLocation(NPC, -34.42, -12.26, 24.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.98, -12.42, 22.78, 2, 0)
	MovementLoopAddLocation(NPC, -51.1, -10.19, 16.59, 2, 0)
	MovementLoopAddLocation(NPC, -54.21, -10.2, 14.85, 2, 0)
	MovementLoopAddLocation(NPC, -72.84, -10.2, -1.25, 2, 0)
	MovementLoopAddLocation(NPC, -78.77, -10.43, -8.67, 2, 0)
	MovementLoopAddLocation(NPC, -81.12, -10.54, -11.11, 2, 0)
	MovementLoopAddLocation(NPC, -83.63, -11.72, -17.32, 2, 0)
	MovementLoopAddLocation(NPC, -86.42, -11.61, -19.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.34, -11.83, -11.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -80.23, -11.36, 0.49, 2, 0)
	MovementLoopAddLocation(NPC, -77.18, -10.95, 10.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -69.55, -10.36, 5.12, 2, 0)
	MovementLoopAddLocation(NPC, -44.06, -10.35, -29.6, 2, 0)
	MovementLoopAddLocation(NPC, -27.9, -12, -47.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.57, -12.26, -44.32, 2, 0)
	MovementLoopAddLocation(NPC, -30.41, -12.47, -41.16, 2, 0)
	MovementLoopAddLocation(NPC, -30.67, -12.58, -36.85, 2, 0)
	MovementLoopAddLocation(NPC, -32.29, -12.41, -33.07, 2, 0)
	MovementLoopAddLocation(NPC, -34.13, -11.79, -31.52, 2, 0)
	MovementLoopAddLocation(NPC, -35.69, -11.55, -30.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.91, -11.15, -27.85, 2, 0)
	MovementLoopAddLocation(NPC, -44.01, -10.32, -25.92, 2, 0)
	MovementLoopAddLocation(NPC, -58.88, -10.45, -13.15, 2, 0)
end

