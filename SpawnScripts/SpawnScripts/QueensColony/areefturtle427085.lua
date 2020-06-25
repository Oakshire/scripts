--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427085.lua
	Script Purpose	:	Waypoint Path for areefturtle427085.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:55 
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
	MovementLoopAddLocation(NPC, 9.75, -11.07, -70.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.15, -11.24, -72.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.63, -11.48, -65.37, 2, 0)
	MovementLoopAddLocation(NPC, 1.48, -11.84, -54.91, 2, 0)
	MovementLoopAddLocation(NPC, 2.34, -11.75, -50.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.16, -11.49, -55.1, 2, 0)
	MovementLoopAddLocation(NPC, -0.97, -11.01, -71.05, 2, 0)
	MovementLoopAddLocation(NPC, -2.74, -11.36, -78.23, 2, 0)
	MovementLoopAddLocation(NPC, -4.78, -12.45, -83.57, 2, 0)
	MovementLoopAddLocation(NPC, -7.13, -12.81, -88.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.22, -11.73, -81.72, 2, 0)
	MovementLoopAddLocation(NPC, 0.16, -11.81, -74.14, 2, 0)
	MovementLoopAddLocation(NPC, 0.22, -11.66, -72.5, 2, 0)
	MovementLoopAddLocation(NPC, -0.89, -11.67, -67.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.22, -12.1, -47.12, 2, 0)
	MovementLoopAddLocation(NPC, 2.49, -12.64, -42.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.6, -12.14, -40.16, 2, 0)
	MovementLoopAddLocation(NPC, 14.49, -11.87, -37.46, 2, 0)
	MovementLoopAddLocation(NPC, 19.24, -11.79, -32.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.35, -11.38, -37.52, 2, 0)
	MovementLoopAddLocation(NPC, 15.09, -11.19, -50.94, 2, 0)
	MovementLoopAddLocation(NPC, 13.58, -11, -62.02, 2, 0)
	MovementLoopAddLocation(NPC, 12.59, -10.52, -66.9, 2, math.random(10, 20))
end


