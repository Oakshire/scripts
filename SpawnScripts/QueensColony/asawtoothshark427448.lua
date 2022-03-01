--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427448.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427448.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:42 
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
	MovementLoopAddLocation(NPC, 59.67, -11.69, 33.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.62, -11.58, 20.85, 2, 0)
	MovementLoopAddLocation(NPC, 64.13, -11.69, 2.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.1, -12.17, 24.91, 2, 0)
	MovementLoopAddLocation(NPC, 68.46, -12.5, 32.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.86, -11.17, 32.62, 2, 0)
	MovementLoopAddLocation(NPC, 39.64, -10.69, 34.81, 2, 0)
	MovementLoopAddLocation(NPC, 13.09, -12.08, 35.91, 2, 0)
	MovementLoopAddLocation(NPC, 6.26, -13.39, 38.01, 2, 0)
	MovementLoopAddLocation(NPC, 3.43, -13.25, 40.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.76, -13.3, 26.54, 2, 0)
	MovementLoopAddLocation(NPC, 27.23, -13.52, 18.39, 2, 0)
	MovementLoopAddLocation(NPC, 32.08, -13.4, 14.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.94, -10.7, 32.21, 2, 0)
	MovementLoopAddLocation(NPC, 49.96, -10.7, 41.23, 2, 0)
	MovementLoopAddLocation(NPC, 56.48, -11.32, 42.88, 2, 0)
	MovementLoopAddLocation(NPC, 63.52, -11.65, 43.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.61, -11.15, 29.57, 2, 0)
	MovementLoopAddLocation(NPC, 54.76, -12.35, 14.92, 2, 0)
	MovementLoopAddLocation(NPC, 55.98, -12.95, 5.91, 2, 0)
	MovementLoopAddLocation(NPC, 54.55, -13.13, -0.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.97, -12.2, 9.2, 2, 0)
	MovementLoopAddLocation(NPC, 59.34, -11.62, 27.43, 2, 0)
end


