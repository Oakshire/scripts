--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425546.lua
	Script Purpose	:	Waypoint Path for ashoalglider425546.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:32 
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
	MovementLoopAddLocation(NPC, 18.91, -11.06, 71.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.36, -10.7, 42.73, 2, 0)
	MovementLoopAddLocation(NPC, 71.14, -10.7, 24.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.1, -10.7, 24.11, 2, 0)
	MovementLoopAddLocation(NPC, 88.12, -12.25, 24.4, 2, 0)
	MovementLoopAddLocation(NPC, 92.81, -12.27, 26.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.55, -12.52, 33.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.77, -11.86, 21.14, 2, 0)
	MovementLoopAddLocation(NPC, 71.48, -11, 11.48, 2, 0)
	MovementLoopAddLocation(NPC, 67.73, -11.54, 4.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.15, -12.06, 2.67, 2, 0)
	MovementLoopAddLocation(NPC, 84.4, -12.4, -4.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.5, -12.02, 12.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.33, -12.27, 14.7, 2, 0)
	MovementLoopAddLocation(NPC, 41.64, -12.28, 22.65, 2, 0)
	MovementLoopAddLocation(NPC, 18.54, -12.49, 34.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.26, -12.68, 36.73, 2, 0)
	MovementLoopAddLocation(NPC, 7.09, -12.64, 38.4, 2, 0)
	MovementLoopAddLocation(NPC, 1.88, -12.58, 41.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.44, -11.64, 50.45, 2, 0)
	MovementLoopAddLocation(NPC, 13.05, -10.67, 66.12, 2, 0)
end


