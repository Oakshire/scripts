--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425521.lua
	Script Purpose	:	Waypoint Path for ashoalglider425521.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:38 
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
	MovementLoopAddLocation(NPC, 22.4, -13.38, 24.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.81, -12.8, 26.88, 2, 0)
	MovementLoopAddLocation(NPC, 39, -11.8, 28.51, 2, 0)
	MovementLoopAddLocation(NPC, 46.78, -10.96, 31.4, 2, 0)
	MovementLoopAddLocation(NPC, 60.27, -11.12, 36.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.07, -11.24, 37.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.09, -10.7, 52.13, 2, 0)
	MovementLoopAddLocation(NPC, 49.41, -10.7, 65.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.47, -11.11, 54.27, 2, 0)
	MovementLoopAddLocation(NPC, 60.72, -11.85, 48.56, 2, 0)
	MovementLoopAddLocation(NPC, 64.94, -12.52, 45.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.64, -10.7, 37.43, 2, 0)
	MovementLoopAddLocation(NPC, 55.9, -10.7, 30.16, 2, 0)
	MovementLoopAddLocation(NPC, 53.24, -11.39, 21.64, 2, 0)
	MovementLoopAddLocation(NPC, 49.15, -11.73, 17.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.8, -12.03, 19.97, 2, 0)
	MovementLoopAddLocation(NPC, 72.09, -13.24, 16.81, 2, 0)
	MovementLoopAddLocation(NPC, 76.7, -13.48, 15.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.63, -11.84, 20.77, 2, 0)
	MovementLoopAddLocation(NPC, 63.84, -11.59, 23.63, 2, 0)
	MovementLoopAddLocation(NPC, 59.88, -10.97, 29.27, 2, 0)
	MovementLoopAddLocation(NPC, 42.19, -11.31, 40.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.27, -12.92, 43.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15, -12.72, 37.21, 2, 0)
	MovementLoopAddLocation(NPC, 20.76, -13.39, 28.26, 2, 0)
	MovementLoopAddLocation(NPC, 22.82, -13.43, 24.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.29, -12.93, 14.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.87, -13.39, 24.18, 2, math.random(10, 20))
end

