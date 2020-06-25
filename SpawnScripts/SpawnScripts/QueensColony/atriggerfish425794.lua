--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425794.lua
	Script Purpose	:	Waypoint Path for atriggerfish425794.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:41 
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
	MovementLoopAddLocation(NPC, 87.52, -12.95, -29.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.29, -13.01, -23.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.83, -12.21, -25.46, 2, 0)
	MovementLoopAddLocation(NPC, 77.94, -11.56, -31.95, 2, 0)
	MovementLoopAddLocation(NPC, 75.2, -10.98, -33.91, 2, 0)
	MovementLoopAddLocation(NPC, 74.36, -11.04, -35.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.91, -11.34, -35.13, 2, 0)
	MovementLoopAddLocation(NPC, 87.07, -12.35, -37.6, 2, 0)
	MovementLoopAddLocation(NPC, 95.85, -12.81, -41.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.58, -11.99, -40.06, 2, 0)
	MovementLoopAddLocation(NPC, 75.37, -11.97, -39.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.7, -12.89, -32.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.96, -12.88, -24.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.99, -12.78, -21.76, 2, 0)
	MovementLoopAddLocation(NPC, 97.08, -12.09, -17.2, 2, 0)
	MovementLoopAddLocation(NPC, 98.86, -11.79, -15.6, 2, math.random(10, 20))
end


