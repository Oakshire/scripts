--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426971.lua
	Script Purpose	:	Waypoint Path for atriggerfish426971.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:08 
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
	MovementLoopAddLocation(NPC, -8.86, -12.96, -18.37, 2, math.random(10, 20))
        MovementLoopAddLocation(NPC, -19.29, -12.34, -19.3, 2, 0)
	MovementLoopAddLocation(NPC, -27.3, -12.13, -20, 2, 0)
	MovementLoopAddLocation(NPC, -38.49, -11.53, -24.47, 2, 0)
	MovementLoopAddLocation(NPC, -41.78, -11.1, -24.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.6, -11.46, -25.07, 2, 0)
	MovementLoopAddLocation(NPC, -26.72, -11.59, -29.48, 2, 0)
	MovementLoopAddLocation(NPC, -21, -12.11, -30.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.3, -11.56, -26.08, 2, 0)
	MovementLoopAddLocation(NPC, -42.88, -11.09, -14.46, 2, 0)
	MovementLoopAddLocation(NPC, -48.33, -11.15, -11.68, 2, 0)
	MovementLoopAddLocation(NPC, -51.21, -11.02, -8.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.56, -10.27, 6.05, 2, 0)
	MovementLoopAddLocation(NPC, -84.03, -10.17, 12.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.12, -10.32, -0.11, 2, 0)
	MovementLoopAddLocation(NPC, -50.32, -10.43, -1.61, 2, 0)
	MovementLoopAddLocation(NPC, -32.64, -10.34, -12.93, 2, 0)
	MovementLoopAddLocation(NPC, -23.21, -11.15, -16.14, 2, 0)
	MovementLoopAddLocation(NPC, -19.29, -11.33, -19.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.68, -11.82, -24.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.05, -12.23, -31.41, 2, 0)
	MovementLoopAddLocation(NPC, -32.69, -12.43, -39.45, 2, 0)
	MovementLoopAddLocation(NPC, -34.99, -12.43, -41.81, 2, 0)
	MovementLoopAddLocation(NPC, -36.73, -12.4, -44.77, 2, 0)
	MovementLoopAddLocation(NPC, -37.75, -11.94, -47.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.36, -10.59, -31.3, 2, 0)
	MovementLoopAddLocation(NPC, -37.48, -10.49, -16.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.37, -11.53, -24.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.35, -12.03, -37.6, 2, 0)
	MovementLoopAddLocation(NPC, -32, -12.07, -40.23, 2, 0)
	MovementLoopAddLocation(NPC, -33.9, -11.95, -42.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.73, -11.35, -40.48, 2, 0)
	MovementLoopAddLocation(NPC, -1.5, -11.87, -37.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.3, -11.29, -25.47, 2, 0)
	MovementLoopAddLocation(NPC, -8.36, -13, -19.36, 2, 0)
end

