--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427630.lua
	Script Purpose	:	Waypoint Path for aneedlefang427630.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:32 
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
	MovementLoopAddLocation(NPC, 19.24, -11.84, 43.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.99, -12.1, 42.65, 2, 0)
	MovementLoopAddLocation(NPC, -6.29, -12.54, 41.48, 2, 0)
	MovementLoopAddLocation(NPC, -12.46, -13.03, 41.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.4, -12.68, 40.3, 2, 0)
	MovementLoopAddLocation(NPC, 14.67, -13.66, 37.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.32, -13.16, 20.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.59, -12.65, 42.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.89, -13.42, 41.96, 2, 0)
	MovementLoopAddLocation(NPC, 11.17, -13.47, 41.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.17, -12.4, 30.24, 2, math.random(10, 20))
end


