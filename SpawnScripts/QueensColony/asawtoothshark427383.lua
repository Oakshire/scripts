--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427383.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427383.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:11 
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
	MovementLoopAddLocation(NPC, -92.78, -10.7, -2.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.07, -10.7, -10.1, 2, 0)
	MovementLoopAddLocation(NPC, -65.37, -10.7, -12.48, 2, 0)
	MovementLoopAddLocation(NPC, -49.27, -10.62, -13.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.38, -10.7, -3.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.24, -10.7, -9.3, 2, 0)
	MovementLoopAddLocation(NPC, -34.87, -10.7, -13.74, 2, 0)
	MovementLoopAddLocation(NPC, -25.65, -11.64, -18.03, 2, 0)
	MovementLoopAddLocation(NPC, -20.4, -12, -18.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.81, -11.5, -20.46, 2, 0)
	MovementLoopAddLocation(NPC, -8.47, -11.33, -25.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.41, -11.31, -33.46, 2, 0)
	MovementLoopAddLocation(NPC, -7.76, -11.84, -42.04, 2, 0)
	MovementLoopAddLocation(NPC, -6.33, -12.43, -46.28, 2, 0)
	MovementLoopAddLocation(NPC, -3.35, -12.51, -50.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.52, -12.05, -47.59, 2, 0)
	MovementLoopAddLocation(NPC, -10.97, -11.63, -46.58, 2, 0)
	MovementLoopAddLocation(NPC, -33.97, -10.69, -48.4, 2, 0)
	MovementLoopAddLocation(NPC, -42.06, -10.7, -52.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.02, -10.7, -40.93, 2, 0)
	MovementLoopAddLocation(NPC, -53.95, -10.7, -30.87, 2, 0)
	MovementLoopAddLocation(NPC, -52.71, -10.7, -19.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.11, -10.7, -9.74, 2, 0)
	MovementLoopAddLocation(NPC, -67.8, -10.7, -6.9, 2, math.random(10, 20))
end


