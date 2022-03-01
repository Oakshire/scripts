--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425534.lua
	Script Purpose	:	Waypoint Path for ashoalglider425534.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:49 
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
	MovementLoopAddLocation(NPC, 5.77, -11.87, 24.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.34, -13.7, 34.77, 2, 0)
	MovementLoopAddLocation(NPC, 11.62, -14.01, 45.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.32, -13.43, 34.91, 2, 0)
	MovementLoopAddLocation(NPC, -3.21, -13.53, 31.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.4, -12.7, 38.07, 2, 0)
	MovementLoopAddLocation(NPC, 2.31, -12.66, 41.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.51, -13.4, 29.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.52, -12.8, 39.92, 2, 0)
	MovementLoopAddLocation(NPC, 1.67, -11.8, 49.62, 2, 0)
	MovementLoopAddLocation(NPC, -2.46, -11.63, 57.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.11, -12.39, 44.82, 2, 0)
	MovementLoopAddLocation(NPC, 1.89, -12.8, 39.65, 2, 0)
	MovementLoopAddLocation(NPC, -0.51, -12.41, 30.49, 2, 0)
	MovementLoopAddLocation(NPC, -1.45, -12.6, 26.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.56, -11.77, 25.8, 2, 0)
end


