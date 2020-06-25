--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425785.lua
	Script Purpose	:	Waypoint Path for atriggerfish425785.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:31 
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
	MovementLoopAddLocation(NPC, 68.76, -11.89, -73.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.89, -11.94, -80.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.58, -11.9, -62.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.29, -11.19, -53.92, 2, 0)
	MovementLoopAddLocation(NPC, 51.55, -10.99, -45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.12, -11.04, -47.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.56, -11.45, -55.19, 2, 0)
	MovementLoopAddLocation(NPC, 58.74, -11.65, -58.6, 2, 0)
	MovementLoopAddLocation(NPC, 54.16, -11.94, -64.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.13, -11.98, -62.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.72, -12.13, -75.49, 2, 0)
	MovementLoopAddLocation(NPC, 32.49, -11.97, -80.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.43, -11.96, -84.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.3, -11.96, -70.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.99, -11.92, -78.4, 2, math.random(10, 20))
end


