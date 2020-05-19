--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425539.lua
	Script Purpose	:	Waypoint Path for ashoalglider425539.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:34 
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
	MovementLoopAddLocation(NPC, 59.7, -12.43, 46.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.02, -12.05, 50.35, 2, 0)
	MovementLoopAddLocation(NPC, 40.04, -11.53, 57.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.88, -12.1, 50.75, 2, 0)
	MovementLoopAddLocation(NPC, 17.98, -13.51, 44.11, 2, 0)
	MovementLoopAddLocation(NPC, 9.96, -13.8, 40.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.9, -13.94, 45.4, 2, 0)
	MovementLoopAddLocation(NPC, 14.23, -13.17, 50.92, 2, 0)
	MovementLoopAddLocation(NPC, 18.05, -12.85, 53.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.29, -11.76, 57.7, 2, 0)
	MovementLoopAddLocation(NPC, 34.97, -11.46, 60.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.59, -10.7, 74.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.29, -10.7, 73.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.2, -10.7, 60.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.29, -11.05, 54.97, 2, 0)
	MovementLoopAddLocation(NPC, 56.3, -12.18, 48.44, 2, 0)
end


