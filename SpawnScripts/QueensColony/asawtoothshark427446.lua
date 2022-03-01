--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427446.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427446.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:25:55 
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
	MovementLoopAddLocation(NPC, -1.1, -11.77, 61.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.91, -12.11, 49.67, 2, 0)
	MovementLoopAddLocation(NPC, -3.95, -12.19, 38.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.51, -11.75, 36.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.55, -13.11, 44.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.39, -14.06, 44.81, 2, 0)
	MovementLoopAddLocation(NPC, 15.96, -14.1, 44.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.09, -12.73, 51.33, 2, 0)
	MovementLoopAddLocation(NPC, 26.81, -12.26, 57.34, 2, 0)
	MovementLoopAddLocation(NPC, 39.76, -11.8, 65.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.48, -11.88, 52.89, 2, 0)
	MovementLoopAddLocation(NPC, 32.52, -13.11, 43.58, 2, 0)
	MovementLoopAddLocation(NPC, 28.65, -13.17, 37.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.71, -11.52, 41.63, 2, 0)
	MovementLoopAddLocation(NPC, 15.39, -11.71, 47.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.57, -12.39, 50.4, 2, 0)
	MovementLoopAddLocation(NPC, 3.72, -12.3, 49.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.38, -13.28, 39.19, 2, 0)
	MovementLoopAddLocation(NPC, -0.3, -12.83, 28.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.55, -12.81, 37.65, 2, 0)
	MovementLoopAddLocation(NPC, -7.52, -11.02, 54.08, 2, 0)
end


