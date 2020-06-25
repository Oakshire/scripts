--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427594.lua
	Script Purpose	:	Waypoint Path for aneedlefang427594.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:59 
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
	MovementLoopAddLocation(NPC, 80.57, -12.13, -29.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.48, -12.1, -29.47, 2, 0)
	MovementLoopAddLocation(NPC, 101.65, -12.9, -29.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.65, -11.79, -11.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.53, -12.04, -23.3, 2, 0)
	MovementLoopAddLocation(NPC, 86.81, -12.11, -32.86, 2, 0)
	MovementLoopAddLocation(NPC, 84.42, -12.06, -43.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.79, -12.27, -40.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 102.27, -11.99, -32.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.21, -13.06, -26.51, 2, math.random(10, 20))
end


