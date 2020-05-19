--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428526.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428526.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:54 
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
	MovementLoopAddLocation(NPC, 55.93, -12.42, -14.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.44, -11.41, -6.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.09, -12.69, -13.9, 2, 0)
	MovementLoopAddLocation(NPC, 47.38, -13.22, -16.53, 2, 0)
	MovementLoopAddLocation(NPC, 37.61, -15.19, -23.11, 2, 0)
	MovementLoopAddLocation(NPC, 34.73, -14.92, -26.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.38, -13.47, -30.11, 2, 0)
	MovementLoopAddLocation(NPC, 23.81, -12.53, -31.14, 2, 0)
	MovementLoopAddLocation(NPC, 15.74, -12.09, -32.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.74, -12.56, -21.77, 2, 0)
	MovementLoopAddLocation(NPC, 25.21, -12.45, -12.03, 2, 0)
	MovementLoopAddLocation(NPC, 26.83, -11.95, 11.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.64, -13.25, -24.36, 2, 0)
	MovementLoopAddLocation(NPC, 20.45, -12.94, -31.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.85, -13.96, -26.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.16, -13.24, -22.62, 2, 0)
	MovementLoopAddLocation(NPC, 40.85, -12.53, -9.77, 2, 0)
	MovementLoopAddLocation(NPC, 49.61, -12.13, 1.56, 2, math.random(10, 20))
end


