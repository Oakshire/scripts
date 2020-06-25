--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425783.lua
	Script Purpose	:	Waypoint Path for atriggerfish425783.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:49 
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
	MovementLoopAddLocation(NPC, 32.36, -10.23, -88.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.13, -10.33, -86.33, 2, 0)
	MovementLoopAddLocation(NPC, 47.89, -10.32, -81.99, 2, 0)
	MovementLoopAddLocation(NPC, 55.94, -11.6, -80.15, 2, 0)
	MovementLoopAddLocation(NPC, 65.99, -11.96, -76.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.1, -11.47, -58.44, 2, 0)
	MovementLoopAddLocation(NPC, 59.16, -11.01, -49.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.31, -11.31, -46.84, 2, 0)
	MovementLoopAddLocation(NPC, 85.22, -11.92, -41.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.46, -11.94, -36.32, 2, 0)
	MovementLoopAddLocation(NPC, 87.55, -12.01, -33.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.57, -12.41, -41.77, 2, 0)
	MovementLoopAddLocation(NPC, 75.17, -12.22, -47.92, 2, 0)
	MovementLoopAddLocation(NPC, 73.93, -12.31, -50.73, 2, 0)
	MovementLoopAddLocation(NPC, 73.2, -12.04, -56.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.92, -12.24, -50.91, 2, 0)
	MovementLoopAddLocation(NPC, 77.57, -12.25, -44.64, 2, 0)
	MovementLoopAddLocation(NPC, 87.78, -12.35, -36.19, 2, 0)
	MovementLoopAddLocation(NPC, 97.27, -12.44, -24.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.2, -12.04, -17.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.55, -13, -37.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.32, -12.64, -42.32, 2, 0)
	MovementLoopAddLocation(NPC, 63.62, -11.96, -62.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.87, -11.96, -53.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.26, -11.94, -67.52, 2, 0)
	MovementLoopAddLocation(NPC, 44.65, -11.47, -80.97, 2, 0)
	MovementLoopAddLocation(NPC, 40.01, -10.99, -84.86, 2, 0)
	MovementLoopAddLocation(NPC, 37.6, -10.42, -86.55, 2, 0)
end
