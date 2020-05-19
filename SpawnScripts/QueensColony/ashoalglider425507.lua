--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425507.lua
	Script Purpose	:	Waypoint Path for ashoalglider425507.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:45 
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
	MovementLoopAddLocation(NPC, 25.21, -14.41, -28.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.08, -12.18, -25, 2, 0)
	MovementLoopAddLocation(NPC, 13.78, -11.4, -21.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.59, -11.65, -10.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.52, -11.73, -16.17, 2, 0)
	MovementLoopAddLocation(NPC, 22.91, -11.99, -22.89, 2, 0)
	MovementLoopAddLocation(NPC, 27.76, -11.93, -26.44, 2, 0)
	MovementLoopAddLocation(NPC, 34.03, -11.84, -33.02, 2, 0)
	MovementLoopAddLocation(NPC, 39.22, -11.48, -37.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.78, -10.7, -38.83, 2, 0)
	MovementLoopAddLocation(NPC, 24.35, -10.7, -50.34, 2, 0)
	MovementLoopAddLocation(NPC, 16.98, -10.7, -57.42, 2, 0)
	MovementLoopAddLocation(NPC, 12.91, -11.04, -60.61, 2, 0)
	MovementLoopAddLocation(NPC, 11.23, -11.49, -62.82, 2, 0)
	MovementLoopAddLocation(NPC, 9.81, -11.77, -66.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.21, -10.98, -52.8, 2, 0)
	MovementLoopAddLocation(NPC, -10.09, -10.7, -46.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.36, -11.18, -38.01, 2, 0)
	MovementLoopAddLocation(NPC, 36.86, -11.91, -23.86, 2, 0)
	MovementLoopAddLocation(NPC, 42.82, -11.96, -18.36, 2, 0)
	MovementLoopAddLocation(NPC, 57.46, -11.53, -8.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.63, -11.81, -16.34, 2, 0)
	MovementLoopAddLocation(NPC, 30.68, -11.97, -33.73, 2, 0)
	MovementLoopAddLocation(NPC, 27.4, -11.31, -42.1, 2, math.random(10, 20))
end


