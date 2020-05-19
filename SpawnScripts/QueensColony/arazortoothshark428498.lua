--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428498.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428498.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:47 
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
	MovementLoopAddLocation(NPC, 27.56, -13.65, -10.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.52, -13.02, -15.55, 2, 0)
	MovementLoopAddLocation(NPC, 12.39, -12.22, -20.93, 2, 0)
	MovementLoopAddLocation(NPC, 0.52, -11.24, -31.6, 2, 0)
	MovementLoopAddLocation(NPC, -1.92, -11.44, -34.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.69, -11.26, -34.5, 2, 0)
	MovementLoopAddLocation(NPC, 15.68, -11.66, -34.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.4, -11.28, -34.2, 2, 0)
	MovementLoopAddLocation(NPC, -3.47, -11.71, -31.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.48, -11.87, -23.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.92, -12.26, -24.13, 2, 0)
	MovementLoopAddLocation(NPC, 30.85, -11.48, -34.87, 2, 0)
	MovementLoopAddLocation(NPC, 44.95, -11.74, -41.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.15, -11.38, -38.97, 2, 0)
	MovementLoopAddLocation(NPC, 26.62, -11.45, -35.84, 2, 0)
	MovementLoopAddLocation(NPC, 15.78, -12.62, -32.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.29, -11.73, -39.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.13, -13.44, -24.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.21, -13.59, -19.36, 2, 0)
	MovementLoopAddLocation(NPC, 28.53, -14.04, -14.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.43, -13.53, -11.4, 2, 0)
	MovementLoopAddLocation(NPC, 39.84, -13.03, -9.84, 2, 0)
	MovementLoopAddLocation(NPC, 43.12, -12.81, -9.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.08, -13.87, -9.58, 2, 0)
end


