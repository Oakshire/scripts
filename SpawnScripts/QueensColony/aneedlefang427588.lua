--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427588.lua
	Script Purpose	:	Waypoint Path for aneedlefang427588.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:04 
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
	MovementLoopAddLocation(NPC, 99.71, -11.08, -21.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.87, -12.86, -38.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.64, -12.75, -39.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.64, -12.13, -42.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.88, -12.07, -40.18, 2, 0)
	MovementLoopAddLocation(NPC, 86.83, -12.06, -33.12, 2, 0)
	MovementLoopAddLocation(NPC, 91.38, -12.2, -22.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.83, -12.12, -32.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96, -12.71, -35.18, 2, 0)
	MovementLoopAddLocation(NPC, 95.45, -12.93, -39.37, 2, math.random(10, 20))
end


