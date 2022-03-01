--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425524.lua
	Script Purpose	:	Waypoint Path for ashoalglider425524.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:59 
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
	MovementLoopAddLocation(NPC, 66.26, -14.4, -0.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.99, -13.84, 1.64, 2, 0)
	MovementLoopAddLocation(NPC, 75.86, -12.87, 7.48, 2, 0)
	MovementLoopAddLocation(NPC, 79.99, -12.7, 12.97, 2, 0)
	MovementLoopAddLocation(NPC, 86.77, -12.49, 18.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.1, -11.65, 34.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.81, -11.9, 35.81, 2, 0)
	MovementLoopAddLocation(NPC, 69.96, -11.69, 52.3, 2, 0)
	MovementLoopAddLocation(NPC, 66.3, -11.44, 55.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.09, -11.17, 49.85, 2, 0)
	MovementLoopAddLocation(NPC, 72.53, -11.18, 40.48, 2, 0)
	MovementLoopAddLocation(NPC, 75.95, -11.43, 23.22, 2, 0)
	MovementLoopAddLocation(NPC, 76.21, -11.58, -0.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.29, -13.21, -0.08, 2, 0)
	MovementLoopAddLocation(NPC, 55.74, -13.42, 4.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.71, -13.51, 2.64, 2, 0)
	MovementLoopAddLocation(NPC, 69.84, -13.96, 2.51, 2, 0)
	MovementLoopAddLocation(NPC, 73.01, -13.94, 2.58, 2, math.random(10, 20))
end


