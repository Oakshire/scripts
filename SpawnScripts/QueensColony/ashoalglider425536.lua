--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425536.lua
	Script Purpose	:	Waypoint Path for ashoalglider425536.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:11 
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
	MovementLoopAddLocation(NPC, -4.47, -12.02, 33.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.85, -12.9, 31.15, 2, 0)
	MovementLoopAddLocation(NPC, 2.94, -13.47, 27.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.02, -13.25, 21.37, 2, 0)
	MovementLoopAddLocation(NPC, 31.13, -13.09, 16.5, 2, 0)
	MovementLoopAddLocation(NPC, 37.56, -12.74, 13.35, 2, 0)
	MovementLoopAddLocation(NPC, 53.69, -13.03, 8.35, 2, 0)
	MovementLoopAddLocation(NPC, 62.61, -14.17, 2.06, 2, 0)
	MovementLoopAddLocation(NPC, 68.36, -15.09, -0.76, 2, 0)
	MovementLoopAddLocation(NPC, 72.46, -15.17, -3.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.38, -14.58, 1.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53, -12.1, 7.1, 2, 0)
	MovementLoopAddLocation(NPC, 40.5, -11.86, 12.25, 2, 0)
	MovementLoopAddLocation(NPC, 32.95, -12.53, 14.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.18, -12.02, 15.77, 2, 0)
	MovementLoopAddLocation(NPC, 55.1, -11.77, 21.08, 2, 0)
	MovementLoopAddLocation(NPC, 63.61, -11.6, 22.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.67, -10.7, 9.13, 2, 0)
	MovementLoopAddLocation(NPC, 74.39, -11.6, 3.15, 2, 0)
	MovementLoopAddLocation(NPC, 75.17, -13.09, -4.07, 2, 0)
	MovementLoopAddLocation(NPC, 72.53, -13.28, -8.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.54, -13.11, 5.53, 2, 0)
	MovementLoopAddLocation(NPC, 74.06, -12.8, 26.87, 2, 0)
	MovementLoopAddLocation(NPC, 74.82, -12.56, 35.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.13, -10.97, 33.72, 2, 0)
	MovementLoopAddLocation(NPC, 45.4, -11.17, 31.35, 2, 0)
	MovementLoopAddLocation(NPC, 41.13, -11.77, 33, 2, 0)
	MovementLoopAddLocation(NPC, 36.9, -11.96, 34.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.22, -13.4, 44.31, 2, 0)
	MovementLoopAddLocation(NPC, 14.69, -13.4, 50.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.3, -12.92, 47.08, 2, 0)
	MovementLoopAddLocation(NPC, -1.08, -11.95, 38.89, 2, 0)
end
