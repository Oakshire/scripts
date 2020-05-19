--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425804.lua
	Script Purpose	:	Waypoint Path for atriggerfish425804.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:36:09 
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
	MovementLoopAddLocation(NPC, 58.78, -13.04, -15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.63, -12.54, -15.59, 2, 0)
	MovementLoopAddLocation(NPC, 40.06, -12.23, -14.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.09, -12.38, -18.14, 2, 0)
	MovementLoopAddLocation(NPC, 37.78, -12.49, -24.21, 2, 0)
	MovementLoopAddLocation(NPC, 30.3, -11.7, -34.35, 2, 0)
	MovementLoopAddLocation(NPC, 26.44, -11.23, -40.57, 2, 0)
	MovementLoopAddLocation(NPC, 20.94, -11.57, -50.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.09, -11.64, -27.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.76, -12.01, -31.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.51, -11.99, -38.05, 2, 0)
	MovementLoopAddLocation(NPC, -8.02, -10.81, -57.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.68, -11.77, -50.07, 2, 0)
	MovementLoopAddLocation(NPC, 0.58, -11.97, -47.32, 2, 0)
	MovementLoopAddLocation(NPC, 5.99, -11.97, -44.92, 2, 0)
	MovementLoopAddLocation(NPC, 11.54, -12.02, -41.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.88, -12.34, -37.02, 2, 0)
	MovementLoopAddLocation(NPC, 19.56, -13.28, -30.42, 2, 0)
	MovementLoopAddLocation(NPC, 23.76, -12.96, -24.73, 2, math.random(10, 20))
end


