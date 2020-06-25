--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425545.lua
	Script Purpose	:	Waypoint Path for ashoalglider425545.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:50:10 
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
	MovementLoopAddLocation(NPC, -4.49, -13.44, 36.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.4, -12.74, 40.33, 2, 0)
	MovementLoopAddLocation(NPC, 28.91, -12.29, 48.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.39, -11.58, 59.11, 2, 0)
	MovementLoopAddLocation(NPC, 13.43, -10.57, 72.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.32, -10.65, 70.97, 2, 0)
	MovementLoopAddLocation(NPC, 57.44, -10.7, 60.09, 2, 0)
	MovementLoopAddLocation(NPC, 67.55, -10.81, 56.1, 2, 0)
	MovementLoopAddLocation(NPC, 75.95, -12.01, 51.36, 2, 0)
	MovementLoopAddLocation(NPC, 82.73, -12.15, 48.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.7, -11.41, 48.04, 2, 0)
	MovementLoopAddLocation(NPC, 36.07, -11.8, 48.96, 2, 0)
	MovementLoopAddLocation(NPC, 22.45, -12.29, 51.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.65, -12.75, 46.04, 2, 0)
	MovementLoopAddLocation(NPC, 24.04, -13.34, 41.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.81, -12.77, 39.95, 2, 0)
	MovementLoopAddLocation(NPC, 16.68, -12.88, 38.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.46, -13.04, 37.8, 2, 0)
end


