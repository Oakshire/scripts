--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427374.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427374.lua
	Script Author	:	Rylec
	Script Date	:	11-15-2019 06:25:52 
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
	MovementLoopAddLocation(NPC, -135.33, -11.38, 3.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.89, -11.12, 10.3, 2, 0)
	MovementLoopAddLocation(NPC, -97.14, -11.37, 14.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.68, -11, 15.1, 2, 0)
	MovementLoopAddLocation(NPC, -127.49, -10.75, 26.05, 2, 0)
	MovementLoopAddLocation(NPC, -130.83, -11.19, 60.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.35, -11.93, 69.46, 2, 0)
	MovementLoopAddLocation(NPC, -150.57, -12.44, 72.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.72, -12.06, 54.87, 2, 0)
	MovementLoopAddLocation(NPC, -138.76, -12.21, 18.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.5, -11.56, 37.19, 2, 0)
	MovementLoopAddLocation(NPC, -124.26, -11.32, 46.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.05, -11.15, 60.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.8, -12.21, 54.75, 2, 0)
	MovementLoopAddLocation(NPC, -148.35, -13.86, 38.91, 2, 0)
	MovementLoopAddLocation(NPC, -148.66, -14.51, 23.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.02, -12.39, 15.33, 2, 0)
	MovementLoopAddLocation(NPC, -129.31, -11.69, 14.85, 2, math.random(10, 20))
end


