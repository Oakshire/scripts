--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427408.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427408.lua
	Script Author	:	Rylec
	Script Date	:	11-15-2019 06:25:40 
	Script Notes	:	Dummy script until they fix these sharks on Live
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
	MovementLoopAddLocation(NPC, -131.58, -12.7, 66.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.69, -12.68, 80.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.12, -13.42, 85.37, 2, 0)
	MovementLoopAddLocation(NPC, -150, -14.61, 86.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -150.91, -14.34, 74.35, 2, 0)
	MovementLoopAddLocation(NPC, -141.91, -12.47, 58.52, 2, 0)
	MovementLoopAddLocation(NPC, -138.63, -10.53, 40.25, 2, 0)
	MovementLoopAddLocation(NPC, -134.67, -10.46, 12.95, 2, 0)
	MovementLoopAddLocation(NPC, -142.8, -10.36, 1.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -151.23, -13.44, 18.87, 2, 0)
	MovementLoopAddLocation(NPC, -147.56, -13.11, 39.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.78, -12.59, 48.75, 2, 0)
	MovementLoopAddLocation(NPC, -125.74, -12.03, 68.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.99, -11.8, 80.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.01, -12.21, 75.66, 2, 0)
end


