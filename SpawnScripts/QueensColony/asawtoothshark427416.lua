--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427416.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427416.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:54 
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
	MovementLoopAddLocation(NPC, 25.14, -12.05, -19.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.32, -12.48, -10.33, 2, 0)
	MovementLoopAddLocation(NPC, 22.21, -11.85, 12.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.86, -12.75, 4.55, 2, 0)
	MovementLoopAddLocation(NPC, 45.44, -13.59, -22.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.6, -12.88, -19.32, 2, 0)
	MovementLoopAddLocation(NPC, 53.09, -12.85, -16.87, 2, 0)
	MovementLoopAddLocation(NPC, 67.33, -11.84, -13.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.51, -12.82, -17.86, 2, 0)
	MovementLoopAddLocation(NPC, 38.2, -13.64, -21.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.54, -11.73, -26.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.16, -12.12, -8.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.5, -14.02, -16.38, 2, 0)
	MovementLoopAddLocation(NPC, 28.98, -14.93, -22.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.59, -12.5, -21.7, 2, 0)
	MovementLoopAddLocation(NPC, 10.18, -11.66, -25.05, 2, math.random(10, 20))
end


