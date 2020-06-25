--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428493.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428493.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:38 
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
	MovementLoopAddLocation(NPC, 10.25, -11.66, -28.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.88, -11.82, -26.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.79, -12.14, -24.22, 2, 0)
	MovementLoopAddLocation(NPC, 13.17, -12.57, -20.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.44, -12.06, -24.01, 2, 0)
	MovementLoopAddLocation(NPC, 19.01, -11.74, -30.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.64, -12.64, -19.86, 2, 0)
	MovementLoopAddLocation(NPC, 21.55, -12.3, -7.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.43, -12.12, -11.31, 2, 0)
	MovementLoopAddLocation(NPC, 16.19, -11.88, -15.7, 2, 0)
	MovementLoopAddLocation(NPC, 11.26, -11.97, -21.86, 2, 0)
	MovementLoopAddLocation(NPC, 7.2, -11.82, -28.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.53, -12.13, -20.78, 2, 0)
	MovementLoopAddLocation(NPC, 16.97, -12.3, -16.31, 2, 0)
	MovementLoopAddLocation(NPC, 20.32, -13.1, -11.23, 2, 0)
	MovementLoopAddLocation(NPC, 23.62, -14.13, -8.32, 2, 0)
	MovementLoopAddLocation(NPC, 26.57, -14.58, -5.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.69, -14.25, -19.82, 2, 0)
	MovementLoopAddLocation(NPC, 21.04, -13.3, -24.84, 2, 0)
	MovementLoopAddLocation(NPC, 15.76, -12.6, -34.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.53, -12.28, -32.51, 2, 0)
end


