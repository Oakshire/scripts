--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427453.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427453.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:09 
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
	MovementLoopAddLocation(NPC, 32.37, -12.24, 18.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.93, -12.94, 25.12, 2, 0)
	MovementLoopAddLocation(NPC, 17.62, -12.8, 32.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.97, -12.28, 37.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.79, -11.19, 59.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.19, -11.08, 64.5, 2, 0)
	MovementLoopAddLocation(NPC, 12.84, -10.63, 71.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.55, -10.7, 71.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.58, -11.18, 58.37, 2, 0)
	MovementLoopAddLocation(NPC, 70.59, -11.02, 41.29, 2, 0)
	MovementLoopAddLocation(NPC, 67.17, -11.74, 27.41, 2, 0)
	MovementLoopAddLocation(NPC, 65.81, -12.27, 14.65, 2, 0)
	MovementLoopAddLocation(NPC, 65.21, -12.86, 7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.44, -12.45, 11.89, 2, 0)
end


