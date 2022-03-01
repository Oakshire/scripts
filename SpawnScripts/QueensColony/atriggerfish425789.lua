--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425789.lua
	Script Purpose	:	Waypoint Path for atriggerfish425789.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:56 
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
	MovementLoopAddLocation(NPC, 99.38, -12.03, -39.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.17, -11.42, -46.96, 2, 0)
	MovementLoopAddLocation(NPC, 75.67, -11.52, -49.19, 2, 0)
	MovementLoopAddLocation(NPC, 72.76, -11.75, -50.81, 2, 0)
	MovementLoopAddLocation(NPC, 67.75, -11.92, -55.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.23, -12.01, -80.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.75, -11.02, -54.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.6, -11.03, -63.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.52, -10.43, -54.39, 2, 0)
	MovementLoopAddLocation(NPC, 77.52, -10.7, -42.34, 2, 0)
	MovementLoopAddLocation(NPC, 80, -11.56, -36.53, 2, 0)
	MovementLoopAddLocation(NPC, 87.25, -12.34, -26.97, 2, 0)
	MovementLoopAddLocation(NPC, 88.21, -11.98, -23.97, 2, 0)
	MovementLoopAddLocation(NPC, 90.71, -11.92, -19.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.33, -11.47, -31.67, 2, 0)
	MovementLoopAddLocation(NPC, 72.7, -10.43, -39.52, 2, 0)
	MovementLoopAddLocation(NPC, 66.9, -10.31, -44.6, 2, 0)
	MovementLoopAddLocation(NPC, 61.04, -10.64, -48.06, 2, 0)
	MovementLoopAddLocation(NPC, 54.56, -10.58, -47.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.38, -11.03, -44.27, 2, 0)
	MovementLoopAddLocation(NPC, 72.65, -11.11, -40.87, 2, 0)
	MovementLoopAddLocation(NPC, 78.49, -11.5, -32.68, 2, 0)
	MovementLoopAddLocation(NPC, 86.61, -11.79, -25.43, 2, 0)
	MovementLoopAddLocation(NPC, 92.9, -12.03, -22.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.23, -12, -35.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.48, -10.38, -44.21, 2, 0)
	MovementLoopAddLocation(NPC, 77.14, -10.32, -51.11, 2, 0)
	MovementLoopAddLocation(NPC, 75.29, -10.19, -53.76, 2, 0)
	MovementLoopAddLocation(NPC, 74.65, -11.06, -58.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.03, -11.42, -61.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.03, -10.44, -52.14, 2, 0)
	MovementLoopAddLocation(NPC, 78.28, -10.21, -50.11, 2, 0)
	MovementLoopAddLocation(NPC, 81.07, -10.2, -47.97, 2, 0)
	MovementLoopAddLocation(NPC, 90.54, -11.43, -44.17, 2, 0)
	MovementLoopAddLocation(NPC, 94.71, -11.79, -42.21, 2, 0)
end
