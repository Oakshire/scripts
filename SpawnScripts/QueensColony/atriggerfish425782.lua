--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425782.lua
	Script Purpose	:	Waypoint Path for atriggerfish425782.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:27 
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
	MovementLoopAddLocation(NPC, 56.56, -11.99, -58.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.36, -12.03, -54.83, 2, 0)
	MovementLoopAddLocation(NPC, 66.73, -12.06, -50.77, 2, 0)
	MovementLoopAddLocation(NPC, 78.3, -12.26, -42.05, 2, 0)
	MovementLoopAddLocation(NPC, 85.25, -12.03, -35.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.29, -12.74, -36.62, 2, 0)
	MovementLoopAddLocation(NPC, 91.48, -13, -38.65, 2, 0)
	MovementLoopAddLocation(NPC, 94.59, -13.06, -41.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.42, -12.44, -43.85, 2, 0)
	MovementLoopAddLocation(NPC, 79.72, -12.32, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, 68.43, -12, -49.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.79, -11.93, -51.87, 2, 0)
	MovementLoopAddLocation(NPC, 60.05, -11.21, -54.43, 2, 0)
	MovementLoopAddLocation(NPC, 49.25, -11.01, -60.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.9, -11.98, -82.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.01, -11.93, -68.19, 2, math.random(10, 20))
end


