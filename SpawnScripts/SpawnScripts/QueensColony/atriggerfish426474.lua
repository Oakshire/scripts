--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426474.lua
	Script Purpose	:	Waypoint Path for atriggerfish426474.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 03:51:10 
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
	MovementLoopAddLocation(NPC, 17.9, -13.25, 272.32, 1.8, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 20.63, -12.17, 257.38, 1.8, 0)
	--MovementLoopAddLocation(NPC, 17.94, -12.97, 264.41, 1.8, 4)
	MovementLoopAddLocation(NPC, 15.9, -12.17, 271.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.27, -13.06, 262.51, 2, 0)
	MovementLoopAddLocation(NPC, 17.9, -13.71, 258.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.68, -13.18, 269.14, 2, 0)
	MovementLoopAddLocation(NPC, 5.49, -13.99, 272.01, 2, 0)
	MovementLoopAddLocation(NPC, 4.74, -13.82, 274.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.27, -12.19, 267.24, 2, 0)
	MovementLoopAddLocation(NPC, 13.9, -11.81, 244.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.61, -12.43, 253.21, 2, 0)
	MovementLoopAddLocation(NPC, 13.84, -12.92, 256.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.92, -13.12, 278.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.25, -12, 262.88, 2, math.random(10, 20))
end


