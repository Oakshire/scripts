--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427410.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427410.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:45 
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
	MovementLoopAddLocation(NPC, 22.56, -11.88, -20.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.7, -12.23, -34.84, 2, 0)
	MovementLoopAddLocation(NPC, 49.3, -11.86, -42.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.54, -11.84, -33.61, 2, 0)
	MovementLoopAddLocation(NPC, 29.49, -12.29, -27.58, 2, 0)
	MovementLoopAddLocation(NPC, 19.55, -13.67, -18.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.07, -13.78, -20.2, 2, 0)
	MovementLoopAddLocation(NPC, 33.45, -12.86, -31.19, 2, 0)
	MovementLoopAddLocation(NPC, 36.82, -12.6, -35.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.65, -12.37, -32.74, 2, 0)
	MovementLoopAddLocation(NPC, 7.29, -11.83, -25.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.39, -12.12, -20.47, 2, 0)
	MovementLoopAddLocation(NPC, 16.63, -12.19, -17.97, 2, 0)
	MovementLoopAddLocation(NPC, 22.09, -13.2, -16.37, 2, 0)
	MovementLoopAddLocation(NPC, 25.78, -13.57, -14.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.55, -13.86, -9.53, 2, 0)
	MovementLoopAddLocation(NPC, 40.74, -13.66, -9.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.92, -13.5, -15.97, 2, 0)
	MovementLoopAddLocation(NPC, 46.97, -12.31, -26.32, 2, 0)
	MovementLoopAddLocation(NPC, 49.39, -11.72, -45.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.2, -10.6, -45.04, 2, 0)
	MovementLoopAddLocation(NPC, 36.92, -10.7, -43.17, 2, 0)
	MovementLoopAddLocation(NPC, 22.27, -12.42, -39.81, 2, math.random(10, 20))
end


