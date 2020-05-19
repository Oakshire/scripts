--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425529.lua
	Script Purpose	:	Waypoint Path for ashoalglider425529.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:19:43 
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
	MovementLoopAddLocation(NPC, -17.64, -11.99, 37.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.07, -12.46, 39.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.96, -11.61, 33.24, 2, 0)
	MovementLoopAddLocation(NPC, -18.45, -11.66, 28.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.19, -11.87, 34.2, 2, 0)
	MovementLoopAddLocation(NPC, -12.18, -11.9, 40.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.46, -12.38, 34.69, 2, 0)
	MovementLoopAddLocation(NPC, 0.85, -12.94, 30.52, 2, 0)
	MovementLoopAddLocation(NPC, 15.45, -12.35, 18.6, 2, 0)
	MovementLoopAddLocation(NPC, 19.26, -12.7, 13.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.95, -12.54, 23.22, 2, 0)
	MovementLoopAddLocation(NPC, 29.35, -12.54, 30.45, 2, 0)
	MovementLoopAddLocation(NPC, 38.09, -12.47, 39.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.47, -13.09, 40.42, 2, 0)
	MovementLoopAddLocation(NPC, 8.1, -12.82, 47.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.95, -11.87, 52.86, 2, 0)
	MovementLoopAddLocation(NPC, -6.96, -10.45, 67.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.08, -12.51, 36.75, 2, 0)
	MovementLoopAddLocation(NPC, 34.63, -12.5, 27.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.44, -12.42, 29.61, 2, 0)
	MovementLoopAddLocation(NPC, 3.66, -12.43, 31.99, 2, 0)
end


