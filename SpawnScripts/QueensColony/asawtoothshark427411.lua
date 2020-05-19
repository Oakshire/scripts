--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427411.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427411.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:32:03 
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
	MovementLoopAddLocation(NPC, 67.54, -12.11, -9.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.74, -12.62, -9.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.08, -13.26, -3.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.98, -12.44, -4, 2, 0)
	MovementLoopAddLocation(NPC, 55.36, -11.82, -6.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.59, -12.73, -6.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.13, -12.32, -9.01, 2, 0)
	MovementLoopAddLocation(NPC, 49.08, -12.8, -25.77, 2, 0)
	MovementLoopAddLocation(NPC, 48.95, -12.81, -25.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.03, -13.18, -23.75, 2, 0)
	MovementLoopAddLocation(NPC, 42.38, -13.54, -17.48, 2, 0)
	MovementLoopAddLocation(NPC, 41.12, -13.53, -9.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.2, -13.82, -3.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.5, -14.13, -4.06, 2, 0)
	MovementLoopAddLocation(NPC, 28.72, -13.74, -6.6, 2, math.random(10, 20))
end


