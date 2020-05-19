--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425810.lua
	Script Purpose	:	Waypoint Path for atriggerfish425810.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:30 
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
	MovementLoopAddLocation(NPC, 4, -11.87, -20.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.83, -12.61, -30.05, 2, 0)
	MovementLoopAddLocation(NPC, 18, -12.72, -36.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.02, -13.28, -29.81, 2, 0)
	MovementLoopAddLocation(NPC, 27.17, -12.86, 2.1, 2, 0)
	MovementLoopAddLocation(NPC, 30.49, -12.98, 5.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.7, -13.16, 0.91, 2, 0)
	MovementLoopAddLocation(NPC, 43.67, -13.49, -2.49, 2, 0)
	MovementLoopAddLocation(NPC, 49.39, -14.12, -5.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.73, -13.81, -3.32, 2, 0)
	MovementLoopAddLocation(NPC, 31.79, -13.08, 3.48, 2, 0)
	MovementLoopAddLocation(NPC, 25.87, -13.01, 7.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.62, -13.08, -25.62, 2, 0)
	MovementLoopAddLocation(NPC, 50.6199, -13.08, -25.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.26, -12.66, -12.64, 2, 0)
	MovementLoopAddLocation(NPC, 51.57, -13.2, -9.11, 2, 0)
	MovementLoopAddLocation(NPC, 54.55, -13.9, -7.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.1, -12.16, -10.66, 2, 0)
	MovementLoopAddLocation(NPC, 59.02, -11.78, -14.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.39, -12.32, -9.11, 2, 0)
	MovementLoopAddLocation(NPC, 33.08, -13.9, -3.58, 2, 0)
	MovementLoopAddLocation(NPC, 20.91, -14.14, -3.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.01, -12.55, -7.85, 2, 0)
	MovementLoopAddLocation(NPC, 9.84, -12.41, -19.3, 2, 0)
	MovementLoopAddLocation(NPC, 7.35, -12.12, -20.44, 2, 0)
end


