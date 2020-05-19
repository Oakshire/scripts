--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425837.lua
	Script Purpose	:	Waypoint Path for atriggerfish425837.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:54 
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
	MovementLoopAddLocation(NPC, 62.89, -12.39, 2.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.59, -12.31, 4.54, 2, 0)
	MovementLoopAddLocation(NPC, 46.55, -12.45, 5.67, 2, 0)
	MovementLoopAddLocation(NPC, 29.87, -12.81, 8.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.54, -12.77, 7.83, 2, 0)
	MovementLoopAddLocation(NPC, 46.73, -12.43, 4.51, 2, 0)
	MovementLoopAddLocation(NPC, 50.08, -12.44, 3.48, 2, 0)
	MovementLoopAddLocation(NPC, 54.69, -13.15, 2.01, 2, 0)
	MovementLoopAddLocation(NPC, 63.52, -13.4, 0.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.41, -13.47, 0.84, 2, 0)
	MovementLoopAddLocation(NPC, 71.1, -13.2, 2.85, 2, 0)
	MovementLoopAddLocation(NPC, 76.77, -12.98, 8.15, 2, 0)
	MovementLoopAddLocation(NPC, 79.29, -12.92, 12, 2, 0)
	MovementLoopAddLocation(NPC, 91.25, -12.88, 24.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.48, -12.56, 5.76, 2, 0)
	MovementLoopAddLocation(NPC, 96.97, -11.97, -1.86, 2, 0)
	MovementLoopAddLocation(NPC, 97.21, -11.95, -8.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.04, -11.61, 9.55, 2, 0)
	MovementLoopAddLocation(NPC, 93.92, -12.47, 21.48, 2, 0)
	MovementLoopAddLocation(NPC, 91.23, -12.7, 28.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.59, -12.92, 18.82, 2, 0)
	MovementLoopAddLocation(NPC, 81.15, -12.34, 15.82, 2, 0)
	MovementLoopAddLocation(NPC, 78.27, -12.43, 12.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.07, -13.44, 13.19, 2, 0)
	MovementLoopAddLocation(NPC, 69.35, -13.9, 12.51, 2, 0)
	MovementLoopAddLocation(NPC, 67.11, -14.09, 9.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.85, -12.88, 7.99, 2, 0)
	MovementLoopAddLocation(NPC, 62.92, -12.65, 4.67, 2, 0)
	MovementLoopAddLocation(NPC, 63.29, -12.52, -1.31, 2, math.random(10, 20))
end
