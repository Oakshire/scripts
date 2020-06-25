--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427429.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427429.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:27 
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
	MovementLoopAddLocation(NPC, -25.27, -12.3, 3.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.38, -10.6, -9.33, 2, 0)
	MovementLoopAddLocation(NPC, -35.02, -10.6, -20.55, 2, 0)
	MovementLoopAddLocation(NPC, -38.36, -11.45, -31.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.78, -10.6, -20.68, 2, 0)
	MovementLoopAddLocation(NPC, -53.71, -10.6, -13.71, 2, 0)
	MovementLoopAddLocation(NPC, -59.94, -10.8, -5.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.54, -10.6, -15.8, 2, 0)
	MovementLoopAddLocation(NPC, -27.73, -10.63, -50.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.2, -11.66, -43.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.33, -12.56, -37.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.11, -12.13, -34.91, 2, 0)
	MovementLoopAddLocation(NPC, -42.44, -11.31, -31.87, 2, 0)
	MovementLoopAddLocation(NPC, -47.1, -10.6, -28.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.65, -10.6, -18.04, 2, 0)
	MovementLoopAddLocation(NPC, -35.94, -10.6, -9.02, 2, 0)
	MovementLoopAddLocation(NPC, -27.42, -10.6, 0.93, 2, 0)
	MovementLoopAddLocation(NPC, -20.66, -12.73, 14.5, 2, math.random(10, 20))
end


