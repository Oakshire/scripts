--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427373.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427373.lua
	Script Author	:	Rylec
	Script Date	:	11-15-2019 06:25:49 
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
	MovementLoopAddLocation(NPC, -147.97, -11.89, 15.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -149.11, -12.44, 40.66, 2, 0)
	MovementLoopAddLocation(NPC, -151.94, -12.73, 55.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.84, -12.56, 68.89, 2, 0)
	MovementLoopAddLocation(NPC, -129.15, -12.07, 76.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -110.25, -11.32, 84.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.18, -11.24, 76.87, 2, 0)
	MovementLoopAddLocation(NPC, -103.5, -11.25, 55.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.48, -11.24, 59.61, 2, 0)
	MovementLoopAddLocation(NPC, -147.49, -13.63, 72.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.23, -13.3, 57.35, 2, 0)
	MovementLoopAddLocation(NPC, -136.14, -12.07, 39.32, 2, 0)
	MovementLoopAddLocation(NPC, -129.22, -11.53, 21.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.88, -10.32, 33.72, 2, 0)
	MovementLoopAddLocation(NPC, -114.91, -10.36, 54.24, 2, 0)
	MovementLoopAddLocation(NPC, -115.03, -10.25, 70.83, 2, 0)
	MovementLoopAddLocation(NPC, -132.56, -10.25, 84.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.17, -11.31, 27.12, 2, 0)
end


