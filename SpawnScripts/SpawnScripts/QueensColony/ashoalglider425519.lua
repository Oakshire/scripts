--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425519.lua
	Script Purpose	:	Waypoint Path for ashoalglider425519.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:10 
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
	MovementLoopAddLocation(NPC, 28.29, -13.42, 9.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.14, -12.49, 4.93, 2, 0)
	MovementLoopAddLocation(NPC, 47.15, -12.49, 0.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.4, -13.32, -11.73, 2, 0)
	MovementLoopAddLocation(NPC, 20.8, -12.57, -21.62, 2, 0)
	MovementLoopAddLocation(NPC, 16.56, -12.41, -25.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.78, -13.97, -24.59, 2, 0)
	MovementLoopAddLocation(NPC, 24.55, -14.54, -21.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.37, -12.89, -22.96, 2, 0)
	MovementLoopAddLocation(NPC, 22.25, -11.9, -25, 2, 0)
	MovementLoopAddLocation(NPC, 20.36, -11.35, -30.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.62, -12.48, -14.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.33, -12.49, -7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.78, -11.76, -22.24, 2, 0)
	MovementLoopAddLocation(NPC, 31.24, -11.47, -32.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.76, -11.81, -23.81, 2, 0)
	MovementLoopAddLocation(NPC, 36.21, -12.01, -12.25, 2, 0)
	MovementLoopAddLocation(NPC, 39.13, -11.91, -5.85, 2, 0)
	MovementLoopAddLocation(NPC, 45.33, -11.48, 0.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40, -12.21, -7.85, 2, 0)
	MovementLoopAddLocation(NPC, 35.06, -13.48, -18.99, 2, 0)
	MovementLoopAddLocation(NPC, 33.79, -13.37, -24.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.9, -14.31, -17.5, 2, 0)
	MovementLoopAddLocation(NPC, 32.56, -14.16, -7.19, 2, 0)
	MovementLoopAddLocation(NPC, 33.38, -13.4, 2, 2, math.random(10, 20))
end


