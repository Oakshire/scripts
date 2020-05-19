--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425497.lua
	Script Purpose	:	Waypoint Path for ashoalglider425497.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:55 
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
	MovementLoopAddLocation(NPC, 89.81, -12.48, -37.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.98, -12, -39.84, 2, 0)
	MovementLoopAddLocation(NPC, 81.68, -10.7, -43.83, 2, 0)
	MovementLoopAddLocation(NPC, 77.74, -10.7, -49.64, 2, 0)
	MovementLoopAddLocation(NPC, 76.31, -10.7, -53.19, 2, 0)
	MovementLoopAddLocation(NPC, 77.08, -10.7, -58.14, 2, 0)
	MovementLoopAddLocation(NPC, 77.19, -11.4, -69.09, 2, 0)
	MovementLoopAddLocation(NPC, 76.89, -11.7, -77.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.93, -11.8, -80.17, 2, 0)
	MovementLoopAddLocation(NPC, 48.39, -11.79, -81.63, 2, 0)
	MovementLoopAddLocation(NPC, 41.73, -11.46, -83.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.73, -11.89, -80.49, 2, 0)
	MovementLoopAddLocation(NPC, 58.68, -11.47, -67.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.25, -11.73, -51.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.19, -10.65, -49.47, 2, 0)
	MovementLoopAddLocation(NPC, 58.39, -10.7, -49.87, 2, 0)
	MovementLoopAddLocation(NPC, 48.94, -10.7, -51.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.96, -10.7, -62.11, 2, 0)
	MovementLoopAddLocation(NPC, 45.91, -10.72, -69.38, 2, 0)
	MovementLoopAddLocation(NPC, 40.21, -10.6, -76.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.48, -11.42, -46.46, 2, 0)
	MovementLoopAddLocation(NPC, 79.88, -11.67, -41.33, 2, 0)
end


