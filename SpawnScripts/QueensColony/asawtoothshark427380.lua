--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427380.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427380.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:13 
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
	MovementLoopAddLocation(NPC, -15.87, -11.76, -40.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.69, -11.79, -29.85, 2, 0)
	MovementLoopAddLocation(NPC, -22.74, -11.48, -16.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.48, -11.7, -30.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.17, -11.81, -32.01, 2, 0)
	MovementLoopAddLocation(NPC, -34.56, -11.39, -44.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.82, -11.46, -43.81, 2, 0)
	MovementLoopAddLocation(NPC, -19.55, -11.82, -43.94, 2, 0)
	MovementLoopAddLocation(NPC, 1.11, -11.89, -38.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.21, -11.38, -33.9, 2, 0)
	MovementLoopAddLocation(NPC, -15.55, -11.24, -30.9, 2, 0)
	MovementLoopAddLocation(NPC, -34.07, -11.43, -16.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.32, -11.33, -34.16, 2, 0)
	MovementLoopAddLocation(NPC, -35.76, -12.09, -40.98, 2, 0)
	MovementLoopAddLocation(NPC, -33.97, -12.31, -44.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.13, -11.18, -47.26, 2, 0)
	MovementLoopAddLocation(NPC, -42.16, -11.13, -52.3, 2, 0)
	MovementLoopAddLocation(NPC, -44.99, -11.59, -56.75, 2, 0)
	MovementLoopAddLocation(NPC, -45.55, -11.72, -62.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.24, -11.4, -54.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.18, -10.6, -48.93, 2, 0)
	MovementLoopAddLocation(NPC, -46.03, -10.7, -33.7, 2, 0)
	MovementLoopAddLocation(NPC, -38.45, -11, -22.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.03, -12.65, -33.41, 2, 0)
	MovementLoopAddLocation(NPC, -31.13, -13.09, -36.53, 2, 0)
	MovementLoopAddLocation(NPC, -24.68, -13.57, -42.2, 2, math.random(10, 20))
end

