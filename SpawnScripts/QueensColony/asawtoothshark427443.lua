--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427443.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427443.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:35 
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
	MovementLoopAddLocation(NPC, 19.46, -12.57, 61.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.09, -12.47, 48.19, 2, 0)
	MovementLoopAddLocation(NPC, 25.68, -12.62, 12.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.31, -11.79, 50.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.55, -12.11, 40.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.54, -11.84, 52.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.47, -12.2, 46.14, 2, 0)
	MovementLoopAddLocation(NPC, -13.35, -13.78, 38.02, 2, 0)
	MovementLoopAddLocation(NPC, -20.46, -14.28, 32.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.55, -12.44, 41.33, 2, 0)
	MovementLoopAddLocation(NPC, 10.33, -12.73, 53.96, 2, math.random(10, 20))
end


