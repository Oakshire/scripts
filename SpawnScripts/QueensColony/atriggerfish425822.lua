--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425822.lua
	Script Purpose	:	Waypoint Path for atriggerfish425822.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:16 
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
	MovementLoopAddLocation(NPC, 18.07, -12.36, 25.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.83, -12.61, 37.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.76, -12.89, 34.56, 2, 0)
	MovementLoopAddLocation(NPC, 7.96, -12.65, 32.76, 2, 0)
	MovementLoopAddLocation(NPC, 18.18, -12.45, 28.9, 2, 0)
	MovementLoopAddLocation(NPC, 25.32, -12.58, 27.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.96, -13.26, 30.48, 2, 0)
	MovementLoopAddLocation(NPC, 3.96, -13.34, 36.67, 2, 0)
	MovementLoopAddLocation(NPC, 1.88, -13.36, 38.27, 2, 0)
	MovementLoopAddLocation(NPC, 0.64, -13.12, 44.17, 2, 0)
	MovementLoopAddLocation(NPC, 1.8, -13.02, 52.57, 2, 0)
	MovementLoopAddLocation(NPC, 6.76, -12.81, 60.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.33, -11.93, 59.51, 2, 0)
	MovementLoopAddLocation(NPC, -8.79, -11.84, 58.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.96, -11.49, 59.96, 2, 0)
	MovementLoopAddLocation(NPC, 14.54, -11.48, 60.13, 2, 0)
	MovementLoopAddLocation(NPC, 24.65, -11.91, 63.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.08, -12.29, 59.84, 2, 0)
	MovementLoopAddLocation(NPC, 16.56, -12.45, 55.61, 2, 0)
	MovementLoopAddLocation(NPC, 2.69, -12.51, 42.6, 2, 0)
	MovementLoopAddLocation(NPC, -6.06, -12.47, 31.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.51, -12.9, 33.65, 2, 0)
	MovementLoopAddLocation(NPC, 15.56, -12.98, 38.87, 2, 0)
	MovementLoopAddLocation(NPC, 31.05, -12.42, 40.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.82, -12.39, 36.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.14, -12.36, 28.29, 2, 0)
end


