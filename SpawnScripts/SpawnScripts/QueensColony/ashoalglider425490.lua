--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425490.lua
	Script Purpose	:	Waypoint Path for ashoalglider425490.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:01 
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
	MovementLoopAddLocation(NPC, 85.14, -11.52, -43.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.61, -12.31, -36.74, 2, 0)
	MovementLoopAddLocation(NPC, 92.26, -12.54, -17.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.7, -11.78, -31.75, 2, 0)
	MovementLoopAddLocation(NPC, 76.57, -11.76, -40.25, 2, 0)
	MovementLoopAddLocation(NPC, 73.79, -11.49, -44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.66, -11.78, -35.36, 2, 0)
	MovementLoopAddLocation(NPC, 85.32, -12.01, -26.4, 2, 0)
	MovementLoopAddLocation(NPC, 91.03, -12.63, -22.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.95, -12.63, -36.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.72, -11.97, -30.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.5, -11.3, -39.35, 2, 0)
	MovementLoopAddLocation(NPC, 59.62, -10.7, -48.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.35, -11.05, -44.74, 2, 0)
	MovementLoopAddLocation(NPC, 96.65, -12.18, -42.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.22, -10.7, -45.25, 2, 0)
	MovementLoopAddLocation(NPC, 81.81, -10.7, -47.23, 2, 0)
	MovementLoopAddLocation(NPC, 78.07, -10.7, -49.82, 2, 0)
	MovementLoopAddLocation(NPC, 75.76, -10.7, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, 73.74, -10.7, -57.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.73, -10.7, -52.35, 2, 0)
	MovementLoopAddLocation(NPC, 77.52, -11.3, -47.73, 2, 0)
	MovementLoopAddLocation(NPC, 80.34, -11.54, -44.87, 2, 0)
end

