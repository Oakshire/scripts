--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425455.lua
	Script Purpose	:	Waypoint Path for ashoalglider425455.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:04 
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
	MovementLoopAddLocation(NPC, -131.55, -11.27, 64.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.53, -11.11, 57.47, 2, 0)
	MovementLoopAddLocation(NPC, -134.52, -10.5, 53.69, 2, 0)
	MovementLoopAddLocation(NPC, -137.94, -10.5, 49.06, 2, 0)
	MovementLoopAddLocation(NPC, -140.88, -11.2, 29.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.93, -11.79, 49.37, 2, 0)
	MovementLoopAddLocation(NPC, -135.45, -11.94, 55.24, 2, 0)
	MovementLoopAddLocation(NPC, -133.09, -12.49, 63.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.95, -12.63, 56.03, 2, 0)
	MovementLoopAddLocation(NPC, -142.41, -12.28, 64.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.71, -12.69, 51.56, 2, 0)
	MovementLoopAddLocation(NPC, -145.39, -12.59, 45.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.66, -12.73, 47.76, 2, 0)
	MovementLoopAddLocation(NPC, -135.5, -11.54, 40.14, 2, 0)
	MovementLoopAddLocation(NPC, -128.39, -11.01, 32.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.41, -12.32, 47.57, 2, 0)
	MovementLoopAddLocation(NPC, -145.43, -12.8, 50.68, 2, 0)
	MovementLoopAddLocation(NPC, -147.95, -13.05, 55.45, 2, 0)
	MovementLoopAddLocation(NPC, -148.58, -13.31, 72.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.07, -13.06, 56.04, 2, 0)
	MovementLoopAddLocation(NPC, -144.88, -12.73, 50.83, 2, 0)
	MovementLoopAddLocation(NPC, -135.36, -12, 54.93, 2, 0)
	MovementLoopAddLocation(NPC, -133.32, -11.66, 57.03, 2, 0)
end

