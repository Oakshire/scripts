--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425526.lua
	Script Purpose	:	Waypoint Path for ashoalglider425526.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:55 
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
	MovementLoopAddLocation(NPC, 39.27, -13.44, 18.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.04, -12.86, 20.64, 2, 0)
	MovementLoopAddLocation(NPC, 22.4, -12, 28.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.95, -11.96, 31.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.22, -12.14, 49.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.18, -13.4, 27.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.82, -12.41, 46.37, 2, 0)
	MovementLoopAddLocation(NPC, 33.97, -11.77, 53.29, 2, 0)
	MovementLoopAddLocation(NPC, 36.01, -11.6, 62.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.73, -10.7, 59.09, 2, 0)
	MovementLoopAddLocation(NPC, 63.45, -10.7, 59.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.96, -11.55, 96.17, 2, 0)
	MovementLoopAddLocation(NPC, 52.84, -11.44, 102.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.37, -11.64, 82.02, 2, 0)
	MovementLoopAddLocation(NPC, 48.22, -11.43, 74.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.46, -11.54, 87.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.22, -11.08, 80.39, 2, 0)
	MovementLoopAddLocation(NPC, 69.17, -11.52, 71.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.59, -11.3, 78.09, 2, 0)
	MovementLoopAddLocation(NPC, 45.85, -10.7, 80.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.23, -10.7, 70.15, 2, 0)
	MovementLoopAddLocation(NPC, 43.69, -10.7, 39.06, 2, 0)
	MovementLoopAddLocation(NPC, 39.9, -12.78, 26.26, 2, 0)
end


