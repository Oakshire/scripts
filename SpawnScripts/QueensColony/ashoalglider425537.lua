--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425537.lua
	Script Purpose	:	Waypoint Path for ashoalglider425537.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:31 
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
	MovementLoopAddLocation(NPC, 5.62, -11.95, 46.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.8, -11.97, 33.6, 2, 0)
	MovementLoopAddLocation(NPC, 30.19, -11.91, 19.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.19, -12.8, 8.74, 2, 0)
	MovementLoopAddLocation(NPC, 59.94, -13.66, 3.51, 2, 0)
	MovementLoopAddLocation(NPC, 66.02, -14.17, 0.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.11, -12.88, 7.42, 2, 0)
	MovementLoopAddLocation(NPC, 48.35, -12.91, 14.46, 2, 0)
	MovementLoopAddLocation(NPC, 42.91, -13.15, 20.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.51, -12.5, 21.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.15, -12.56, 27.02, 2, 0)
	MovementLoopAddLocation(NPC, 1.72, -12.47, 46.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.19, -12.52, 47.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.13, -10.97, 44.57, 2, 0)
	MovementLoopAddLocation(NPC, 43.91, -11.27, 39.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28, -12.31, 42.96, 2, 0)
	MovementLoopAddLocation(NPC, 16.61, -12.39, 43.99, 2, 0)
end


