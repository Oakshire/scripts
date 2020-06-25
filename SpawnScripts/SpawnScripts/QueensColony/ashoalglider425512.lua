--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425512.lua
	Script Purpose	:	Waypoint Path for ashoalglider425512.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:26 
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
	MovementLoopAddLocation(NPC, -14.4, -11.45, -87.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.71, -11.51, -89.53, 2, 0)
	MovementLoopAddLocation(NPC, -3.38, -11.56, -92.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.14, -11.3, -78.03, 2, 0)
	MovementLoopAddLocation(NPC, 8.03, -11.47, -60.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.45, -11.52, -60.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16, -12.21, -60.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.59, -10.83, -54.14, 2, 0)
	MovementLoopAddLocation(NPC, 42.37, -10.7, -44.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.13, -11.29, -35.96, 2, 0)
	MovementLoopAddLocation(NPC, 41.68, -12.01, -28.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.66, -12.2, -33.23, 2, 0)
	MovementLoopAddLocation(NPC, 28.69, -11.65, -39.97, 2, 0)
	MovementLoopAddLocation(NPC, 26.82, -11.57, -42.7, 2, 0)
	MovementLoopAddLocation(NPC, 24.15, -11.29, -50.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.81, -10.62, -62.99, 2, 0)
	MovementLoopAddLocation(NPC, 5.95, -11.31, -71.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.71, -11.11, -75.85, 2, 0)
	MovementLoopAddLocation(NPC, -4.5, -10.63, -81, 2, 0)
	MovementLoopAddLocation(NPC, -8.75, -11.23, -85.28, 2, 0)
	MovementLoopAddLocation(NPC, -12.62, -11.44, -86.66, 2, 0)
	MovementLoopAddLocation(NPC, -17.19, -11.49, -86.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.11, -11.33, -93.21, 2, math.random(10, 20))
end


