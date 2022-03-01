--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425838.lua
	Script Purpose	:	Waypoint Path for atriggerfish425838.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:50:03 
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
	MovementLoopAddLocation(NPC, -1.63, -13.04, 46.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.7, -13.06, 42.82, 2, 0)
	MovementLoopAddLocation(NPC, -13.23, -13.68, 40.57, 2, 0)
	MovementLoopAddLocation(NPC, -17.07, -13.87, 40.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.51, -13.5, 40.21, 2, 0)
	MovementLoopAddLocation(NPC, -0.68, -13.38, 41.03, 2, 0)
	MovementLoopAddLocation(NPC, 3.63, -13.68, 42.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.72, -13.01, 41.57, 2, 0)
	MovementLoopAddLocation(NPC, 10.69, -12.19, 40.86, 2, 0)
	MovementLoopAddLocation(NPC, 12.67, -12.1, 41.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.95, -12.4, 35.5, 2, 0)
	MovementLoopAddLocation(NPC, -1.1, -12.32, 29.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.23, -12.12, 52.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.03, -12.67, 47.86, 2, 0)
	MovementLoopAddLocation(NPC, 8.09, -14.04, 36.8, 2, 0)
	MovementLoopAddLocation(NPC, 10.97, -14.03, 32.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.92, -12.13, 41.95, 2, 0)
	MovementLoopAddLocation(NPC, 12.57, -11.99, 44.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.25, -12.21, 53.01, 2, 0)
	MovementLoopAddLocation(NPC, -2.19, -12.04, 60.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.05, -11.99, 52.54, 2, 0)
	MovementLoopAddLocation(NPC, 13.43, -11.98, 47.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7, -12.48, 47.65, 2, 0)
	MovementLoopAddLocation(NPC, 3.11, -12.61, 47.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.69, -12.97, 36.41, 2, 0)
	MovementLoopAddLocation(NPC, -3.68, -12.85, 30.71, 2, math.random(10, 20))
end


