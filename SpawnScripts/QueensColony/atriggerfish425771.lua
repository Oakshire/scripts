--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425771.lua
	Script Purpose	:	Waypoint Path for atriggerfish425771.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:00 
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
	MovementLoopAddLocation(NPC, -30.47, -11.99, 17.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.42, -11.7, 30.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.33, -12.63, 29.43, 2, 0)
	MovementLoopAddLocation(NPC, -35.13, -13.3, 27.57, 2, 0)
	MovementLoopAddLocation(NPC, -41.91, -13.7, 21.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.81, -11.91, 19.81, 2, 0)
	MovementLoopAddLocation(NPC, -29.29, -12.04, 15.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.66, -10.68, 3.62, 2, 0)
	MovementLoopAddLocation(NPC, -36.22, -10.23, -3.47, 2, 0)
	MovementLoopAddLocation(NPC, -36.81, -10.56, -10.57, 2, 0)
	MovementLoopAddLocation(NPC, -38.86, -10.97, -16.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.57, -11.06, -19.53, 2, 0)
	MovementLoopAddLocation(NPC, -8.12, -11.43, -31.51, 2, 0)
	MovementLoopAddLocation(NPC, -2.79, -12.01, -34.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.26, -12.12, -35.99, 2, 0)
	MovementLoopAddLocation(NPC, -25.39, -13.82, -37.64, 2, 0)
	MovementLoopAddLocation(NPC, -28.95, -13.55, -37.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.33, -13.01, -33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.04, -12.51, -26.34, 2, 0)
	MovementLoopAddLocation(NPC, -18.05, -12.13, -15.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.08, -11.67, -7.21, 2, 0)
	MovementLoopAddLocation(NPC, -26.38, -11.24, -1.24, 2, 0)
	MovementLoopAddLocation(NPC, -29.28, -11.22, 2.76, 2, 0)
	MovementLoopAddLocation(NPC, -31.94, -11.78, 7.55, 2, 0)
	MovementLoopAddLocation(NPC, -33.42, -12.24, 13.37, 2, math.random(10, 20))
end

