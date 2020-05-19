--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427574.lua
	Script Purpose	:	Waypoint Path for aneedlefang427574.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:37 
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
	MovementLoopAddLocation(NPC, 80.41, -12.05, -31.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.68, -12.88, -37.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.42, -12.06, -43.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.15, -12.15, -39.84, 2, 0)
	MovementLoopAddLocation(NPC, 99.73, -12.19, -31.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.14, -12.07, -31.43, 2, 0)
	MovementLoopAddLocation(NPC, 82.95, -12.08, -27.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.87, -12.94, -19.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.97, -12.12, -24.04, 2, 0)
	MovementLoopAddLocation(NPC, 82.88, -12, -25.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.42, -11.04, -40.06, 2, math.random(10, 20))
end


