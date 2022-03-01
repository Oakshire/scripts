--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425533.lua
	Script Purpose	:	Waypoint Path for ashoalglider425533.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:29 
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
	MovementLoopAddLocation(NPC, 15.87, -12.36, 62.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.68, -12.35, 59.16, 2, 0)
	MovementLoopAddLocation(NPC, 31.72, -12.19, 47.38, 2, 0)
	MovementLoopAddLocation(NPC, 42.85, -11.4, 36.79, 2, 0)
	MovementLoopAddLocation(NPC, 43.25, -11.46, 30.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.02, -11.14, 16.01, 2, 0)
	MovementLoopAddLocation(NPC, 53.08, -11.8, 4.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.81, -11.51, 20.06, 2, 0)
	MovementLoopAddLocation(NPC, 42.52, -12.16, 29.99, 2, 0)
	MovementLoopAddLocation(NPC, 41.66, -12.42, 34.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.66, -11.3, 46.21, 2, 0)
	MovementLoopAddLocation(NPC, 50.09, -10.7, 67.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.53, -11.73, 48.15, 2, 0)
	MovementLoopAddLocation(NPC, 26.94, -13.55, 34.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.38, -13.76, 37.77, 2, 0)
	MovementLoopAddLocation(NPC, 18.86, -14.37, 40.29, 2, 0)
	MovementLoopAddLocation(NPC, 16.27, -14.44, 43.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.17, -12.89, 50.31, 2, 0)
end


