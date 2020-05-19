--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427437.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427437.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:43 
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
	MovementLoopAddLocation(NPC, -72.2, -10.7, 9.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.61, -10.7, -49.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.3, -10.7, -27.94, 2, 0)
	MovementLoopAddLocation(NPC, -72.05, -10.7, -21.56, 2, 0)
	MovementLoopAddLocation(NPC, -84.61, -11.14, -13.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.46, -10.5, -15.9, 2, 0)
	MovementLoopAddLocation(NPC, -56.11, -10.7, -21.5, 2, 0)
	MovementLoopAddLocation(NPC, -52, -10.7, -28.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.56, -11.06, -33, 2, 0)
	MovementLoopAddLocation(NPC, -33.13, -11.38, -43.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.01, -11.4, -39.72, 2, 0)
	MovementLoopAddLocation(NPC, -37.01, -11.58, -29.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.61, -11.07, -29.08, 2, 0)
	MovementLoopAddLocation(NPC, -59.5, -10.7, -15.47, 2, 0)
	MovementLoopAddLocation(NPC, -75.18, -10.7, -9.8, 2, 0)
	MovementLoopAddLocation(NPC, -89.13, -11, -12.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.15, -10.7, 2.8, 2, 0)
end


