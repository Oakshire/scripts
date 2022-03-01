--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427371.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427371.lua
	Script Author	:	Rylec
	Script Date	:	11-15-2019 06:25:43 
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
	MovementLoopAddLocation(NPC, -140.67, -12.8, 41.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.76, -12.24, 24.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.68, -11.75, 18.5, 2, 0)
	MovementLoopAddLocation(NPC, -116.12, -11.65, 14.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.59, -10.52, 17.4, 2, 0)
	MovementLoopAddLocation(NPC, -125.23, -10.19, 25, 2, 0)
	MovementLoopAddLocation(NPC, -124.52, -10.19, 38.4, 2, 0)
	MovementLoopAddLocation(NPC, -114.76, -10.41, 46.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.85, -10.2, 61.13, 2, 0)
	MovementLoopAddLocation(NPC, -123.89, -10.28, 78.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.17, -12.26, 66.27, 2, 0)
	MovementLoopAddLocation(NPC, -147.86, -13.22, 55.39, 2, 0)
	MovementLoopAddLocation(NPC, -149.84, -13.63, 42.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.65, -13.33, 17.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.58, -12.5, 33.93, 2, 0)
end


