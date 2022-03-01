--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427435.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427435.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:37 
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
	MovementLoopAddLocation(NPC, 66.68, -11.27, 62.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.95, -11.26, 58.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.2, -11.89, 54.95, 2, 0)
	MovementLoopAddLocation(NPC, 16.93, -12.41, 51.22, 2, 0)
	MovementLoopAddLocation(NPC, 5.59, -12.07, 46.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.28, -12.4, 35.77, 2, 0)
	MovementLoopAddLocation(NPC, 25.57, -12.24, 31.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.98, -13.1, 34.75, 2, 0)
	MovementLoopAddLocation(NPC, 2.88, -13.56, 40.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.99, -13.98, 46.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.36, -12.2, 51.8, 2, 0)
	MovementLoopAddLocation(NPC, 30.57, -11.96, 54.62, 2, 0)
	MovementLoopAddLocation(NPC, 43.35, -11.6, 65.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.44, -10.93, 65.79, 2, 0)
end


