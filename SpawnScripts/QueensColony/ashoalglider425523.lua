--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425523.lua
	Script Purpose	:	Waypoint Path for ashoalglider425523.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:29 
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
	MovementLoopAddLocation(NPC, -1.23, -11.42, 65.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.8, -12.04, 59.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.21, -12.25, 57.68, 2, 0)
	MovementLoopAddLocation(NPC, 13.99, -12.22, 44.56, 2, 0)
	MovementLoopAddLocation(NPC, 7.49, -13.09, 35.29, 2, 0)
	MovementLoopAddLocation(NPC, 6.07, -13.26, 31.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.69, -12.9, 21.41, 2, 0)
	MovementLoopAddLocation(NPC, 22.26, -12.57, 15.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.8, -12.94, 21.13, 2, 0)
	MovementLoopAddLocation(NPC, 11.71, -13.22, 25.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.07, -13.6, 21.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.84, -13.54, 27.46, 2, 0)
	MovementLoopAddLocation(NPC, 15.83, -13.5, 34.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.52, -13.45, 27.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.7, -13.05, 27.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.16, -13.57, 30.44, 2, 0)
	MovementLoopAddLocation(NPC, -8.58, -13.9, 31.88, 2, 0)
	MovementLoopAddLocation(NPC, -14.42, -14.39, 33.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.77, -12.98, 39.28, 2, 0)
	MovementLoopAddLocation(NPC, -6.97, -11.22, 51.25, 2, 0)
end


