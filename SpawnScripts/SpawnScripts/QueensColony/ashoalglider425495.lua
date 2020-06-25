--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425495.lua
	Script Purpose	:	Waypoint Path for ashoalglider425495.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:56 
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
	MovementLoopAddLocation(NPC, -60.42, -12.46, 253.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.61, -11.96, 242.43, 2, 0)
	MovementLoopAddLocation(NPC, -54.28, -11.47, 240.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.63, -11.8, 243.09, 2, 0)
	MovementLoopAddLocation(NPC, -62.81, -11.91, 253.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.31, -12.1, 257.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.59, -11.91, 263.65, 2, 0)
	MovementLoopAddLocation(NPC, -36.18, -12.09, 268.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.15, -12.8, 263.46, 2, 0)
	MovementLoopAddLocation(NPC, -40.19, -12.55, 260.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.38, -12, 260.06, 2, 0)
	MovementLoopAddLocation(NPC, -64.19, -12.1, 257.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.4, -12.29, 264.14, 2, 0)
	MovementLoopAddLocation(NPC, -30.12, -12.08, 274.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.22, -12.1, 267.79, 2, 0)
	MovementLoopAddLocation(NPC, -48.53, -12.2, 255.81, 2, 0)
	MovementLoopAddLocation(NPC, -58.04, -12.04, 252, 2, 0)
end

