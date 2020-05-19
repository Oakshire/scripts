--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425504.lua
	Script Purpose	:	Waypoint Path for ashoalglider425504.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:32:57 
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
	MovementLoopAddLocation(NPC, 22.12, -11.5, -1.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.87, -11.88, -10.49, 2, 0)
	MovementLoopAddLocation(NPC, 17.65, -11.93, -19.54, 2, 0)
	MovementLoopAddLocation(NPC, 16.27, -11.51, -28.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.56, -11.35, -32.93, 2, 0)
	MovementLoopAddLocation(NPC, 0.54, -11.44, -40.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.7, -11.12, -33.6, 2, 0)
	MovementLoopAddLocation(NPC, 4.45, -10.7, -29.15, 2, 0)
	MovementLoopAddLocation(NPC, 6.88, -10.7, -18.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.64, -10.61, -24.49, 2, 0)
	MovementLoopAddLocation(NPC, 18.55, -11.29, -31.72, 2, 0)
	MovementLoopAddLocation(NPC, 28.85, -11, -41.93, 2, 0)
	MovementLoopAddLocation(NPC, 31.52, -10.7, -45.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.81, -11.25, -38.47, 2, 0)
	MovementLoopAddLocation(NPC, 25.96, -12.9, -12.35, 2, 0)
	MovementLoopAddLocation(NPC, 25.56, -12.53, -1.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.35, -13.09, -12.21, 2, 0)
	MovementLoopAddLocation(NPC, 50.19, -12.65, -25.47, 2, 0)
	MovementLoopAddLocation(NPC, 50.18, -12.65, -25.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.07, -12.06, -18.56, 2, 0)
	MovementLoopAddLocation(NPC, 52.3, -12.02, -12.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.68, -11.64, -17.62, 2, 0)
	MovementLoopAddLocation(NPC, 63.87, -11.58, -18.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.59, -11.52, -20.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.63, -11.91, -18.7, 2, 0)
	MovementLoopAddLocation(NPC, 44.93, -11.98, -10.77, 2, 0)
	MovementLoopAddLocation(NPC, 25.36, -13.33, -3.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.59, -13.5, -4.37, 2, 0)
	MovementLoopAddLocation(NPC, 46.33, -11.93, -8.04, 2, 0)
	MovementLoopAddLocation(NPC, 55.58, -11.41, -12.14, 2, math.random(10, 20))
end
