--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427423.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427423.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:22 
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
	MovementLoopAddLocation(NPC, 31.4299, -12.82, 6.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.88, -13.06, -3.65, 2, 0)
	MovementLoopAddLocation(NPC, 34.11, -13.53, -20.03, 2, 0)
	MovementLoopAddLocation(NPC, 31.87, -13.61, -28.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.12, -12.83, -6.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.42, -12.32, -8.71, 2, 0)
	MovementLoopAddLocation(NPC, 59.37, -11.58, -17.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.22, -12.37, -15.31, 2, 0)
	MovementLoopAddLocation(NPC, 43.68, -11.92, -11.76, 2, 0)
	MovementLoopAddLocation(NPC, 39.49, -11.99, -8.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.74, -13.45, -8.84, 2, 0)
	MovementLoopAddLocation(NPC, 52.27, -13.88, -8.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.79, -13.66, -4.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.73, -13.7, 0.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.38, -13.76, 0.05, 2, 0)
	MovementLoopAddLocation(NPC, 27.45, -13.56, 1.76, 2, math.random(10, 20))
end


