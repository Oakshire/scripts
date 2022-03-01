--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425840.lua
	Script Purpose	:	Waypoint Path for atriggerfish425840.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:46 
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
	MovementLoopAddLocation(NPC, 59.63, -11.94, 24.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.86, -11.93, 24.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.92, -11.85, 21.65, 2, 0)
	MovementLoopAddLocation(NPC, 65.11, -11.97, 18.15, 2, 0)
	MovementLoopAddLocation(NPC, 65.19, -12.91, 9.83, 2, 0)
	MovementLoopAddLocation(NPC, 69.84, -13.55, 4.25, 2, 0)
	MovementLoopAddLocation(NPC, 71.21, -12.31, 3.75, 2, 0)
	MovementLoopAddLocation(NPC, 73.55, -11.54, 4.25, 2, 0)
	MovementLoopAddLocation(NPC, 84.72, -12.78, 6.21, 2, 0)
	MovementLoopAddLocation(NPC, 90.93, -12.84, 8.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.57, -12.77, 6.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.98, -13.46, 5.87, 2, 0)
	MovementLoopAddLocation(NPC, 79.31, -14.24, 3.72, 2, 0)
	MovementLoopAddLocation(NPC, 76.62, -15.03, -0.9, 2, 0)
	MovementLoopAddLocation(NPC, 75.17, -14.81, -6.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.13, -14.11, 5.6, 2, 0)
	MovementLoopAddLocation(NPC, 76.29, -14.01, 9.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.48, -13.1, 12.98, 2, 0)
	MovementLoopAddLocation(NPC, 70.11, -12.51, 16.07, 2, 0)
	MovementLoopAddLocation(NPC, 65.36, -12.31, 19.44, 2, 0)
end


